# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_lightbox/version"

Gem::Specification.new do |s|
  s.name        = "simple_lightbox"
  s.version     = SimpleLightbox::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Edward Taupier"]
  s.email       = ["edtaupier@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Easy gem for displaying a lightbox with specified content using rjs helpers and lightbox js class.}
  s.description = %q{Simple jQuery UI based lightbox}

  s.rubyforge_project = "simple_lightbox"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
