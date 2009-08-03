# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jplug}
  s.version = "0.1.0"

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
     "ekko/html/index.html",
     "ekko/html/stylesheets/application.css",
     "ekko/html/stylesheets/base.css",
     "ekko/html/stylesheets/gridz.css",
     "ekko/html/stylesheets/reset.css",
     "ekko/html/stylesheets/skin.css",
     "ekko/lib/jquery.ekko.js",
     "jplug.gemspec",
     "lib/jquery.rb",
     "lib/jquery/fillers.rb",
     "lib/templates/application.css",
     "lib/templates/base.css",
     "lib/templates/gridz.css",
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
