require_relative "../../basics"
 
require "Capybara"
require "Capybara/cucumber"
require "rspec"
 
 
World do
  Capybara.app = App1
 
  include Capybara::DSL
  include RSpec::Matchers
end