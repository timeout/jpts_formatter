# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jpts_formatter/version'
require 'rake'

Gem::Specification.new do |spec|
  spec.name          = "jpts_formatter"
  spec.version       = JptsFormatter::VERSION
  spec.authors       = ["Joe Gain"]
  spec.email         = ["joe.gain@gmail.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  # spec.homepage      = ['none']

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = FileList['lib/**/*']
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'jpts_extractor'
  spec.add_dependency 'thor', '~> 0.19.1', '>= 0.19.0'
  spec.add_dependency 'dimensions', '~> 1.3.0', '>= 1.3.0'
  spec.add_dependency 'builder', '~> 3.2.2', '>=3.2.2'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
