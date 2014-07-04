# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'os_name/version'

Gem::Specification.new do |spec|
  spec.name          = "os_name"
  spec.version       = OSName::VERSION
  spec.authors       = ["Juanito Fatas"]
  spec.email         = ["katehuang0320@gmail.com"]
  spec.summary       = %q{Get the name of the current operating system. Example: OS X Yosemite}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/juanitofatas/os_name"
  spec.license       = "MIT"

  spec.files = %w[LICENSE README.md Rakefile os_name.gemspec]
  spec.executables   = %w[os_name]
  spec.test_files    = Dir.glob('spec/**/*')
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.3.0"
end
