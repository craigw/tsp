require_relative "lib/tsp/version"

Gem::Specification.new do |spec|
  spec.name = "tsp"
  spec.version = Tsp::VERSION
  spec.authors = ["Craig Webster"]
  spec.email = ["craig@barkingiguana.com"]

  spec.summary = "Timestamp Prefix"
  spec.description = "Prefixes a timestamp to each line of STDIN, and prints the result"
  spec.homepage = "https://rubygems.org/gems/tsp"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/craigw/tsp"
  spec.metadata["changelog_uri"] = "https://github.com/craigw/tsp/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
