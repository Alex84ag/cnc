require 'test_helper'

class Movie2ControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
