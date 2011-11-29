# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_development_toolkit/version"

Gem::Specification.new do |s|
  s.name        = "rails_development_toolkit"
  s.version     = RailsDevelopmentToolkit::VERSION
  s.authors     = ["ingeniarius"]
  s.email       = ["mail@ingeniarius.name"]
  s.homepage    = "https://github.com/ingeniarius/rails-development-toolkit"
  s.summary     = %q{Rails Development Toolkit}
  s.description = %q{Rake tasks for Rails development process management}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rake"
end
