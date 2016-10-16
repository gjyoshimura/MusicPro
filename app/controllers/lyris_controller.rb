class LyrisController < ApplicationController
  def Home
    @styles = Style.all
  end

  def ListOfCourses
    @user = current_user
    @courses = Topic.all
  end

  def ListOfLessons
  end

  def Lesson
  end
end
