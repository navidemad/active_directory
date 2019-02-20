# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'active_directory/version'

Gem::Specification.new do |s|
  s.name                      = 'active_directory'
  s.version                   = ActiveDirectory::Version
  s.authors                   = ['Navid EMAD']
  s.email                     = ['navid.emad@tsc.digital']
  s.summary                   = 'Active Directory Ruby Wrapper'
  s.description               = "An interface library for accessing Microsoft's Active Directory."
  s.homepage                  = 'https://github.com/navidemad/active_directory'
  s.license                   = 'MIT'
  s.extra_rdoc_files          = ['MIT-LICENSE', 'README.md']
  s.rdoc_options              = ['--charset=UTF-8']
  s.test_files                = Dir['spec/**/*']
  s.files                     = Dir['lib/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md', 'active_directory.gemspec']
  s.add_runtime_dependency    'net-ldap', '~> 0.16.1'
end
