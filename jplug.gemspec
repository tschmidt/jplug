# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jplug}
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Terry Schmidt"]
  s.date = %q{2009-08-03}
  s.default_executable = %q{jplug}
  s.email = %q{tschmidt@ext-inc.com}
  s.executables = ["jplug"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/jplug",
     "jplug.gemspec",
     "lib/jquery.rb",
     "lib/jquery/fillers.rb",
     "lib/templates/application.css",
     "lib/templates/base.css",
     "lib/templates/gridz.css",
     "lib/templates/jquery-1.3.2.js",
     "lib/templates/jquery.easing-1.3.js",
     "lib/templates/jquery.ekko-0.1.js",
     "lib/templates/jquery.form-2.28.js",
     "lib/templates/reset.css",
     "test/jplug_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/tschmidt/jplug}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Creates the base file structure for jquery plugins.}
  s.test_files = [
    "test/jplug_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
