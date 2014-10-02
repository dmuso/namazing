require File.expand_path("../lib/namazing/namazing", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "namazing"
  gem.version       = Namazing.version
  gem.author        = "Dan Harper"
  gem.email         = "dan@kingdomsolutions.com.au"
  gem.description   = gem.summary = "Name things with more awesome."
  gem.homepage      = "https://github.com/dmuso/namazing"

  gem.add_runtime_dependency 'digest'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.platform      = Gem::Platform::CURRENT
end
