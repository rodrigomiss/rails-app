require 'test_helper'

class Admin::CategoryNewsControllerTest < ActionController::TestCase
  setup do
    @admin_category_news = admin_category_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_category_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_category_news" do
    assert_difference('Admin::CategoryNews.count') do
      post :create, admin_category_news: {  }
    end

    assert_redirected_to admin_category_news_path(assigns(:admin_category_news))
  end

  test "should show admin_category_news" do
    get :show, id: @admin_category_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_category_news
    assert_response :success
  end

  test "should update admin_category_news" do
    patch :update, id: @admin_category_news, admin_category_news: {  }
    assert_redirected_to admin_category_news_path(assigns(:admin_category_news))
  end

  test "should destroy admin_category_news" do
    assert_difference('Admin::CategoryNews.count', -1) do
      delete :destroy, id: @admin_category_news
    end

    assert_redirected_to admin_category_news_index_path
  end
end
