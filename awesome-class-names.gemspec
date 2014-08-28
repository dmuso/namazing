require File.expand_path("../lib/awesome_class_names/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "awesome-class-names"
  gem.version       = AwesomeClassNames.version
  gem.authors       = ["Dan Harper"]
  gem.email         = ["dan@kingdomsolutions.com.au"]
  gem.description   = %q{Make your Ruby class names more awesome.}
  gem.summary       = %q{More awesome is more better.}
  gem.homepage      = ""

  gem.add_runtime_dependency 'activesupport'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
