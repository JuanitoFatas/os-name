# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'os_name/version'

Gem::Specification.new do |spec|
  spec.name          = 'os_name'
  spec.version       = OSName::VERSION
  spec.authors       = ['Juanito Fatas']
  spec.email         = ['katehuang0320@gmail.com']
  spec.summary       = 'Get the name of the current operating system. Example: OS X Yosemite'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/juanitofatas/os_name'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.executables   = %w(os_name)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.3.0'
end
