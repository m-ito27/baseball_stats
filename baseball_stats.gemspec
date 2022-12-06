# frozen_string_literal: true

require_relative "lib/baseball_stats/version"

Gem::Specification.new do |spec|
  spec.name = "baseball_stats"
  spec.version = BaseballStats::VERSION
  spec.authors = ["Ito Masaki"]
  spec.email = ["msk.nfl.teabow12@gmail.com"]

  spec.summary = "generate baseball stats"
  spec.description = "This gem is created for my lerning. This gem provide method to calculate baseball stats."
  spec.homepage = "https://github.com/m-ito27/baseball_stats"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/m-ito27/baseball_stats"
  spec.metadata["changelog_uri"] = "https://github.com/m-ito27/baseball_stats/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
