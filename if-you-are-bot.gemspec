
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "if/you/are/bot/version"

Gem::Specification.new do |spec|
  spec.name          = "if-you-are-bot"
  spec.version       = If::You::Are::Bot::VERSION
  spec.authors       = ["Yumainaura"]
  spec.email         = ["yuma.inaura@gmail.com"]

  spec.summary       = %q{Counting bot install in Rubygems}
  spec.description   = %q{Counting bot install in Rubygems}
  spec.homepage      = "https://github.com/YumaInaura/if-you-are-bot"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
