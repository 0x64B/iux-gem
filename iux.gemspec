# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'iux/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'iux'
  s.version     = Iux::VERSION
  # We created our specific gem based on Jens Ljungblad's article
  # https://www.varvet.com/blog/building-components-and-style-guides-in-rails/
  s.authors     = ['Jens Ljungblad', 'Thiago Vian']
  s.email       = ['thiago.vian@iugu.com']
  s.homepage    = 'https://github.com/iugu/iux-gem'
  s.summary     = 'iUX view components for Rails 3.2+'
  s.description = 'iUX view components for Rails 3.2+'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 3.2.20'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'rubocop', '~> 0.68.1'
  s.add_development_dependency 'rubocop-performance'
  s.add_development_dependency 'sqlite3'
end
