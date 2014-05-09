require 'test_helper'

class SingersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:singers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create singer" do
    assert_difference('Singer.count') do
      post :create, :singer => { }
    end

    assert_redirected_to singer_path(assigns(:singer))
  end

  test "should show singer" do
    get :show, :id => singers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => singers(:one).to_param
    assert_response :success
  end

  test "should update singer" do
    put :update, :id => singers(:one).to_param, :singer => { }
    assert_redirected_to singer_path(assigns(:singer))
  end

  test "should destroy singer" do
    assert_difference('Singer.count', -1) do
      delete :destroy, :id => singers(:one).to_param
    end

    assert_redirected_to singers_path
  end
end
