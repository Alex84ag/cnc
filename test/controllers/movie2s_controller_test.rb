require 'test_helper'

class Movie2sControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
