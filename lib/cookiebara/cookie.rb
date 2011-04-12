module Cookiebara
  class Cookie

    class << self
      def session
        session_verifier.verify(encrypted_session)
      end

      def session=(new_session)
        session = session_verifier.generate(self.session.merge(new_session))
        rack_mock_session.set_cookie(
          "#{session_key}=#{session}",
          URI.parse("http://www.example.com//")
        )
      end

      def clear
        rack_mock_session.clear_cookies
      end

      private

      def session_verifier
        ActiveSupport::MessageVerifier.new(Rails.application.config.secret_token, 'SHA1')
      end

      def encrypted_session
        cookie_jar.to_hash.first.last
      end

      def session_key
        cookie_jar.to_hash.first.first
      end

      def cookie_jar
        rack_mock_session.cookie_jar
      end

      def rack_mock_session
        Capybara.current_session.driver.current_session.instance_variable_get(:@rack_mock_session)
      end
    end

  end
end