require_relative "lib/slanger/version"

Gem::Specification.new do |spec|
  spec.name = "oceanex-slanger"
  spec.version = Slanger::VERSION
  spec.authors = ["Joblee", "Steve", "Meng", "Sniper", "Jiayu"]
  spec.email = ["jobleeyoui@gmail.com"]

  spec.summary = "A websocket service compatible with Pusher libraries"
  spec.description = "The Oceanex Slanger inherits from unmaintained project Slanger and continue to provide update and fixes"
  spec.homepage = "https://github.com/OceanEx/slanger"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0.1")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/OceanEx/slanger/archive/v0.7.2.0.zip"
  spec.metadata["changelog_uri"] = "https://github.com/OceanEx/slanger/releases"
  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "eventmachine", "~> 1.2.7"
  spec.add_dependency "em-hiredis", "~> 0.3.1"
  spec.add_dependency "em-websocket", "~> 0.5.2"
  spec.add_dependency "rack", "~> 2.2.3"
  spec.add_dependency "rack-fiber_pool", "~> 0.9.3"
  spec.add_dependency "signature", "~> 0.1.8"
  spec.add_dependency "activesupport", "~> 6.1.3.2"
  spec.add_dependency "sinatra", "~> 2.1.0"
  spec.add_dependency "thin", "~> 1.8.1"
  spec.add_dependency "em-http-request", "~> 1.1.7"
  spec.add_dependency "oj", "~> 3.11.6"

  spec.add_development_dependency "rspec", "~> 3.10.0"
  spec.add_development_dependency "pusher", "~> 2.0.1"
  spec.add_development_dependency "haml", "~> 5.2.1"
  spec.add_development_dependency "timecop", "~> 0.9.4"
  spec.add_development_dependency "webmock", "~> 3.13.0"
  spec.add_development_dependency "mocha", "~> 1.12.0"
  spec.add_development_dependency "pry", "~> 0.13.1"
  spec.add_development_dependency "pry-byebug", "~> 3.9.0"
  spec.add_development_dependency "bundler", "~> 2.2.20"
  spec.add_development_dependency "rake", "~> 13.0.3"

  spec.files = Dir["README.md", "lib/**/*", "slanger.rb"]
  spec.require_path = "."
end
