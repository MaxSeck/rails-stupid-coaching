require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get questions_open_url
    assert_response :success
  end
end
