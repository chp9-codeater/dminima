# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "dminima"
  spec.version       = "0.0.1"
  spec.authors       = ["Francis Tremblay"]
  spec.email         = ["francis.tremblay@gmail.com"]

  spec.summary       = "Strait to the doc, no weird stuff in your markdown"
  spec.homepage      = "https://github.com/chp9-codeater/dminima"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_development_dependency "bundler"
end
