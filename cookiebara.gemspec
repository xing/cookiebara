# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cookiebara/version"

Gem::Specification.new do |s|
  s.name        = "cookiebara"
  s.version     = Cookiebara::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Timothy Payton", "Oemuer Oezkir"]
  s.email       = ["timothy.payton@xing.com", "oemuer.oezkir@xing.com"]
  s.homepage    = ""
  s.summary     = %q{Manipulate cookies in your tests}
  s.description = %q{A workaround to read and write cookies in your capybara-driven testcases}

  s.add_dependency("rails", ">= 3.0.3")
  s.add_dependency("capybara", ">= 0.4.0")

  s.rubyforge_project = "cookiebara"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
