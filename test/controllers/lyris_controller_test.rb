require 'test_helper'

class LyrisControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get ListOfCourses" do
    get :ListOfCourses
    assert_response :success
  end

  test "should get ListOfLessons" do
    get :ListOfLessons
    assert_response :success
  end

  test "should get Lesson" do
    get :Lesson
    assert_response :success
  end

end
