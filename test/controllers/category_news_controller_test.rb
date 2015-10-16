require 'test_helper'

class CategoryNewsControllerTest < ActionController::TestCase
  setup do
    @category_news = category_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_news" do
    assert_difference('CategoryNews.count') do
      post :create, category_news: {  }
    end

    assert_redirected_to category_news_path(assigns(:category_news))
  end

  test "should show category_news" do
    get :show, id: @category_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_news
    assert_response :success
  end

  test "should update category_news" do
    patch :update, id: @category_news, category_news: {  }
    assert_redirected_to category_news_path(assigns(:category_news))
  end

  test "should destroy category_news" do
    assert_difference('CategoryNews.count', -1) do
      delete :destroy, id: @category_news
    end

    assert_redirected_to category_news_index_path
  end
end
