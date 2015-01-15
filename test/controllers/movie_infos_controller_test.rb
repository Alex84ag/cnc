require 'test_helper'

class MovieInfosControllerTest < ActionController::TestCase
  setup do
    @movie_info = movie_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_info" do
    assert_difference('MovieInfo.count') do
      post :create, movie_info: { info: @movie_info.info, info_type_id: @movie_info.info_type_id, movie_id: @movie_info.movie_id }
    end

    assert_redirected_to movie_info_path(assigns(:movie_info))
  end

  test "should show movie_info" do
    get :show, id: @movie_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_info
    assert_response :success
  end

  test "should update movie_info" do
    patch :update, id: @movie_info, movie_info: { info: @movie_info.info, info_type_id: @movie_info.info_type_id, movie_id: @movie_info.movie_id }
    assert_redirected_to movie_info_path(assigns(:movie_info))
  end

  test "should destroy movie_info" do
    assert_difference('MovieInfo.count', -1) do
      delete :destroy, id: @movie_info
    end

    assert_redirected_to movie_infos_path
  end
end
