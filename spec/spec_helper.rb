require 'rspec'
require 'rake'

Dir[File.expand_path("../../lib/**/*.rb", __FILE__)].each { |f| require f }

RSpec.configure do |config|
end
