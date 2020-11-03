# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "standarddigital/style/version"

Gem::Specification.new do |spec|
  spec.name          = "standarddigital-style"
  spec.version       = Standarddigital::Style::VERSION
  spec.authors       = ["Team Standard Digital"]
  spec.email         = ["engineering@standarddigitalco.com"]

  spec.summary       = 'Standard Digital shared configs for Rubocop.'
  spec.homepage      = 'https://github.com/standarddigital/standarddigital-ruby-style'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.1.0"
  spec.add_dependency "rubocop-minitest", "~> 0.10"
  spec.add_dependency "rubocop-performance", "~> 1.8"
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
end
