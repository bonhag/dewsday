# require File.dirname(__FILE__) + '/../../my_app'
require File.dirname(__FILE__) + '/../my_app'

require 'capybara'
require 'capybara/dsl'
require 'test/unit'

class HelloWorldTest < Test::Unit::TestCase
    include Capybara::DSL
    Capybara.default_driver = :selenium # <-- use Selenium driver

    def setup
        Capybara.app = Sinatra::Application.new
    end

    def test_it_works
        visit '/'
        assert page.has_content?('Hello World')
    end
end

