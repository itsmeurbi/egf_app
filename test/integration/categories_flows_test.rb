require 'test_helper'

class CategoriesFlowsTest < ActionDispatch::IntegrationTest
  setup do
    karen = users(:karen)
    sign_in_user(karen)
    @default_category = Category.first
    @last_category = Category.last
  end

  test "redirects to default category" do
    get categories_url

    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select ".title--category", @default_category.name.titleize
  end

  test "can list category" do
    get category_url(@last_category.name)

    assert_response :success
    assert_select ".title--category", @last_category.name.titleize
  end
end
