require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  test "should get revision" do
    get :revision
    assert_response :success
  end

end
