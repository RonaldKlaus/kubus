require 'test_helper'

class SciencedomainsControllerTest < ActionController::TestCase
  setup do
    @sciencedomain = sciencedomains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sciencedomains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sciencedomain" do
    assert_difference('Sciencedomain.count') do
      post :create, sciencedomain: {  }
    end

    assert_redirected_to sciencedomain_path(assigns(:sciencedomain))
  end

  test "should show sciencedomain" do
    get :show, id: @sciencedomain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sciencedomain
    assert_response :success
  end

  test "should update sciencedomain" do
    patch :update, id: @sciencedomain, sciencedomain: {  }
    assert_redirected_to sciencedomain_path(assigns(:sciencedomain))
  end

  test "should destroy sciencedomain" do
    assert_difference('Sciencedomain.count', -1) do
      delete :destroy, id: @sciencedomain
    end

    assert_redirected_to sciencedomains_path
  end
end
