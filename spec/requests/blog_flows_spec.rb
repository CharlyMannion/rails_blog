require './test/test_helper.rb'

class BlogFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Hello, rails"
  end
end
