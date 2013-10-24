require 'test_helper'

class StateLanguagesControllerTest < ActionController::TestCase
  setup do
    @state_language = state_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_language" do
    assert_difference('StateLanguage.count') do
      post :create, state_language: { description: @state_language.description, language_id: @state_language.language_id, name: @state_language.name, state_id: @state_language.state_id }
    end

    assert_redirected_to state_language_path(assigns(:state_language))
  end

  test "should show state_language" do
    get :show, id: @state_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_language
    assert_response :success
  end

  test "should update state_language" do
    patch :update, id: @state_language, state_language: { description: @state_language.description, language_id: @state_language.language_id, name: @state_language.name, state_id: @state_language.state_id }
    assert_redirected_to state_language_path(assigns(:state_language))
  end

  test "should destroy state_language" do
    assert_difference('StateLanguage.count', -1) do
      delete :destroy, id: @state_language
    end

    assert_redirected_to state_languages_path
  end
end
