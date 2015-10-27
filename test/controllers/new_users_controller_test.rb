require 'test_helper'

class NewUsersControllerTest < ActionController::TestCase
  setup do
    @new_user = new_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_user" do
    assert_difference('NewUser.count') do
      post :create, new_user: { log_in: @new_user.log_in, sign_up: @new_user.sign_up }
    end

    assert_redirected_to new_user_path(assigns(:new_user))
  end

  test "should show new_user" do
    get :show, id: @new_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_user
    assert_response :success
  end

  test "should update new_user" do
    patch :update, id: @new_user, new_user: { log_in: @new_user.log_in, sign_up: @new_user.sign_up }
    assert_redirected_to new_user_path(assigns(:new_user))
  end

  test "should destroy new_user" do
    assert_difference('NewUser.count', -1) do
      delete :destroy, id: @new_user
    end

    assert_redirected_to new_users_path
  end
end
