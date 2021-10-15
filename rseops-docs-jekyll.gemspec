# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "rseops-docs-jekyll"
  spec.version       = "1.0.1"
  spec.authors       = ["@vsoch"]
  spec.email         = ["vsoch@users.noreply.github.com"]

  spec.summary       = %q{A simple documentation theme intended for RSE-ops documentation sites.}
  spec.description   = "RSE-ops is a community to help developers with open source best practices and tooling. Many of the RSE-ops community sites have common branding, and a theme is appropriate to have consistency between different repositories all wanting to deploy the same branding."
  spec.homepage      = "https://rse-ops.github.io"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|NOTICE|COPYRIGHT|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 1.2"
end

