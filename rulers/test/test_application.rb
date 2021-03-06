require_relative 'minitest_helper'

class TestApp < Rulers::Application
end

class RulerApplicationTest < MiniTest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    assert last_response.ok?
  end
end
