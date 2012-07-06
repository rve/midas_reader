require 'test_helper'

class SyncPagesControllerTest < ActionController::TestCase
  setup do
    @sync_page = sync_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sync_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sync_page" do
    assert_difference('SyncPage.count') do
      post :create, sync_page: {  }
    end

    assert_redirected_to sync_page_path(assigns(:sync_page))
  end

  test "should show sync_page" do
    get :show, id: @sync_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sync_page
    assert_response :success
  end

  test "should update sync_page" do
    put :update, id: @sync_page, sync_page: {  }
    assert_redirected_to sync_page_path(assigns(:sync_page))
  end

  test "should destroy sync_page" do
    assert_difference('SyncPage.count', -1) do
      delete :destroy, id: @sync_page
    end

    assert_redirected_to sync_pages_path
  end
end
