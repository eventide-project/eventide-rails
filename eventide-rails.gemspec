# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'eventide-rails'
  s.summary = "Eventide on Rails"
  s.version = '0.0.0'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/eventide-rails'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.5'
end
