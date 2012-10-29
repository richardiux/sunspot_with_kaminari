# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sunspot_with_kaminari/version"

Gem::Specification.new do |s|
  s.name        = "sunspot_with_kaminari"
  s.version     = SunspotWithKaminari::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Richard Millan"]
  s.email       = ["richardiux@gmail.com"]
  s.homepage    = "https://github.com/richardiux/sunspot_with_kaminari"
  s.summary     = %q{Pagination with kaminari for sunspot}
  s.description = %q{Extends sunspot to be compatible with kaminari for pagination}

  s.rubyforge_project = "sunspot_with_kaminari"

  s.add_dependency 'sunspot_rails'
  s.add_dependency 'kaminari', '>= 0.14.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
