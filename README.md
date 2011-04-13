# Cookiebara

Read and write cookies within your capybara-powered tests!

##  Usage

To use this in your Rails tests, simply do the following steps:

### Setup

#### Gemfile:

`gem 'cookiebara'`

#### In your test cases:

_Example for ActionController::IntegrationTest

    class MooTest < ActionController::IntegrationTest
      include Capybara
      include Cookiebara

      # your tests
    end

### Using it

Cookiebara adds three new methods to your testcases:

`current_session # => returns the current session`

`update_session("user_name" => "MastaBlasta")`

`clear_cookies # not a bad idea to use in your setup or teardown`
