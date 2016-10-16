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
  
  def StyleDescription
    @style = Style.find(params[:id])
    @topics = Topic.where(style_id:params[:id],instrument_id: current_user.profiles[0].instrument)
  end
end
