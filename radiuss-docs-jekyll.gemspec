# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "radiuss-docs-jekyll"
  spec.version       = "1.0.0"
  spec.authors       = ["@vsoch"]
  spec.email         = ["vsoch@users.noreply.github.com"]

  spec.summary       = %q{A simple documentation theme intended for RADIUSS documentation sites.}
  spec.description   = "RADIUSS is an initiative to help developers with open source best practices and tooling. Many of the RADIUSS sites have common branding, and a theme is appropriate to have consistency between different repositories all wanting to deploy the same branding."
  spec.homepage      = "https://rse-radiuss.github.io"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|NOTICE|COPYRIGHT|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
end

