# Cookiebara

Read and write cookies within your capybara-powered tests!

##  Usage

To use this in your Rails tests, simply do the following steps:

### Setup

#### Gemfile:

`gem 'cookiebara'`

#### In your test cases:

_Example for ActionController::IntegrationTest_

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

`update_cookie(:user_id => 42)`

## License

The MIT License

Copyright (c) 2012 [XING AG](http://www.xing.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
