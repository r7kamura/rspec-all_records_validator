# frozen_string_literal: true

require_relative "lib/anubis/version"

Gem::Specification.new do |spec|
  spec.name          = "anubis"
  spec.version       = Anubis::VERSION
  spec.authors       = ["colorbox"]
  spec.email         = ["colorbox222@gmail.com"]

  spec.summary       = "validate all objects at last of system spec"
  spec.description   = "validate all objects at last of system spec"
  spec.homepage      = "https://github.com/colorbox/anubis"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/colorbox/anubis/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel", ">= 5.0.0"
  spec.add_dependency "rspec-rails", ">= 3.10.0"
end
