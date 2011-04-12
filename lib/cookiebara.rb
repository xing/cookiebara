module Cookiebara
  autoload :Cookie, 'cookiebara/cookie'

  def current_session
    Cookiebara::Cookie.session
  end

  def update_session(new_session)
    Cookiebara::Cookie.session = new_session
  end

  def clear_cookies
    Cookiebara::Cookie.clear
  end

end

