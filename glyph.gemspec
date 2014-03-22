# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "./lib/glyph"

Gem::Specification.new do |spec|
  spec.name          = "glyph"
  spec.version       = Glyph::VERSION
  spec.authors       = ["Jared Hardy"]
  spec.email         = ["jared@jaredhardy.com"]
  spec.summary       = %q{Easy CSS content glyph character conversion.}
  spec.description   = %q{Easy CSS content glyph character conversion.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
