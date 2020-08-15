require 'test_helper'

class CreatecategoryTest < ActionDispatch::IntegrationTest
   test "get new category form and create category" do
    get "/categories/new"
    assert_responce :success
          assert_diffrence 'Category.count', 1 do
              post categories_path,params: {category:{name:"Sports"}}
                assert_responce :redirect
          end
   follow_redirect!
   assert_responce :success
   assert_match "Sports", responce.body
   end


   test "get new category form and reject invalid category submission" do
    get "/categories/new"
    assert_responce :success
          assert_diffrence 'Category.count', 1 do
              post categories_path,params: {category:{name:" "}}
          end
   assert_match "errors", responce.body
   assert_select'div.alert'
   assert_select'h4.alert-heading'
   end
end
