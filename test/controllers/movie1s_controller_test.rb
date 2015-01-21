require 'test_helper'

class Movie1sControllerTest < ActionController::TestCase
  setup do
    @movie1 = movie1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie1" do
    assert_difference('Movie1.count') do
      post :create, movie1: { tt_id: @movie1.tt_id }
    end

    assert_redirected_to movie1_path(assigns(:movie1))
  end

  test "should show movie1" do
    get :show, id: @movie1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie1
    assert_response :success
  end

  test "should update movie1" do
    patch :update, id: @movie1, movie1: { tt_id: @movie1.tt_id }
    assert_redirected_to movie1_path(assigns(:movie1))
  end

  test "should destroy movie1" do
    assert_difference('Movie1.count', -1) do
      delete :destroy, id: @movie1
    end

    assert_redirected_to movie1s_path
  end
end
