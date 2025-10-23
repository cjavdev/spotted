# frozen_string_literal: true

require_relative "lib/spotted/version"

Gem::Specification.new do |s|
  s.name = "spotted"
  s.version = Spotted::VERSION
  s.summary = "Ruby library to access the Spotted API"
  s.authors = ["Spotted"]
  s.email = "wave@cjav.dev"
  s.homepage = "https://gemdocs.org/gems/spotted"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/spotted-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
