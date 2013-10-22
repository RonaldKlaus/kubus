require 'test_helper'

class AttributeLanguagesControllerTest < ActionController::TestCase
  setup do
    @attribute_language = attribute_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute_language" do
    assert_difference('AttributeLanguage.count') do
      post :create, attribute_language: { description: @attribute_language.description, language_id: @attribute_language.language_id, name: @attribute_language.name }
    end

    assert_redirected_to attribute_language_path(assigns(:attribute_language))
  end

  test "should show attribute_language" do
    get :show, id: @attribute_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attribute_language
    assert_response :success
  end

  test "should update attribute_language" do
    patch :update, id: @attribute_language, attribute_language: { description: @attribute_language.description, language_id: @attribute_language.language_id, name: @attribute_language.name }
    assert_redirected_to attribute_language_path(assigns(:attribute_language))
  end

  test "should destroy attribute_language" do
    assert_difference('AttributeLanguage.count', -1) do
      delete :destroy, id: @attribute_language
    end

    assert_redirected_to attribute_languages_path
  end
end
