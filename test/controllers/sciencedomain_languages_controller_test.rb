require 'test_helper'

class SciencedomainLanguagesControllerTest < ActionController::TestCase
  setup do
    @sciencedomain_language = sciencedomain_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sciencedomain_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sciencedomain_language" do
    assert_difference('SciencedomainLanguage.count') do
      post :create, sciencedomain_language: { description: @sciencedomain_language.description, language_id: @sciencedomain_language.language_id, name: @sciencedomain_language.name, state_id: @sciencedomain_language.state_id }
    end

    assert_redirected_to sciencedomain_language_path(assigns(:sciencedomain_language))
  end

  test "should show sciencedomain_language" do
    get :show, id: @sciencedomain_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sciencedomain_language
    assert_response :success
  end

  test "should update sciencedomain_language" do
    patch :update, id: @sciencedomain_language, sciencedomain_language: { description: @sciencedomain_language.description, language_id: @sciencedomain_language.language_id, name: @sciencedomain_language.name, state_id: @sciencedomain_language.state_id }
    assert_redirected_to sciencedomain_language_path(assigns(:sciencedomain_language))
  end

  test "should destroy sciencedomain_language" do
    assert_difference('SciencedomainLanguage.count', -1) do
      delete :destroy, id: @sciencedomain_language
    end

    assert_redirected_to sciencedomain_languages_path
  end
end
