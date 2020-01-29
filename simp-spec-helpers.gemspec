# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'simp/spec_helpers/version'
require 'date'

Gem::Specification.new do |s|
  s.name        = 'simp-spec-helpers'
  s.date        = Date.today.to_s
  s.summary     = 'spec helper methods for SIMP'
  s.description = <<-EOF
    RSPEC helper methods to help scaffold SIMP unit tests
  EOF
  s.version     = Simp::SpecHelpers::VERSION
  s.license     = 'Apache-2.0'
  s.authors     = ['SIMP Team']
  s.email       = 'simp@simp-project.org'
  s.homepage    = 'https://github.com/simp/rubygem-simp-spec-helpers'
  s.metadata = {
                 'issue_tracker' => 'https://simp-project.atlassian.net'
               }
  s.add_development_dependency  'puppetlabs_spec_helper', '~> 0'
  s.add_development_dependency  'puppet',                 '>= 5.5'
  s.add_development_dependency  'rspec',                  '~> 3.2'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
end
