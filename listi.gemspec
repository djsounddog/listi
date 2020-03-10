require_relative 'lib/listi/version'

Gem::Specification.new do |spec|
  spec.name          = "listi"
  spec.version       = Listi::VERSION
  spec.authors       = ["djsounddog"]
  spec.email         = ["djsounddog@gmail.com"]

  spec.summary       = "Oxford comma serial list generator"
  spec.description   = "Returns an oxford comma separated string for a given csv, array, or list"
  spec.homepage      = "https://github.com/djsounddog/listi"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.add_development_dependency "rspec", "~> 3.2"
  # spec.add_dependency ""

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  # spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/djsounddog/listi"
  spec.metadata["changelog_uri"] = "https://github.com/djsounddog/listi/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
