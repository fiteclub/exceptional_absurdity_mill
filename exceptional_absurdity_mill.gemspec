# frozen_string_literal: true

require_relative "lib/exceptional_absurdity_mill/version"

Gem::Specification.new do |spec|
  spec.name          = "exceptional_absurdity_mill"
  spec.version       = ExceptionalAbsurdityMill::VERSION
  spec.authors       = ["fiteclub"]
  spec.email         = ["matt@fite.dev"]

  spec.summary       = "Leverages Faker gem to create sample data structures"
  spec.description   = "Leverages Faker gem to create sample data structures"
  spec.homepage      = "https://github.com/fiteclub/exceptional_absurdity_mill"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/fiteclub/exceptional_absurdity_mill"
  spec.metadata["changelog_uri"] = "https://github.com/fiteclub/exceptional_absurdity_mill"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency 'faker'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
