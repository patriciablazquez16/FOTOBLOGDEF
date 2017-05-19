require 'test_helper'

class AprendesControllerTest < ActionController::TestCase
  setup do
    @aprende = aprendes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aprendes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aprende" do
    assert_difference('Aprende.count') do
      post :create, aprende: {  }
    end

    assert_redirected_to aprende_path(assigns(:aprende))
  end

  test "should show aprende" do
    get :show, id: @aprende
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aprende
    assert_response :success
  end

  test "should update aprende" do
    patch :update, id: @aprende, aprende: {  }
    assert_redirected_to aprende_path(assigns(:aprende))
  end

  test "should destroy aprende" do
    assert_difference('Aprende.count', -1) do
      delete :destroy, id: @aprende
    end

    assert_redirected_to aprendes_path
  end
end
