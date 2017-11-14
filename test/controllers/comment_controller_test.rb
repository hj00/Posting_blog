require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "should get create_comment" do
    get :create_comment
    assert_response :success
  end

end
