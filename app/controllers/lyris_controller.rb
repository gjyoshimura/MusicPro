class LyrisController < ApplicationController
  def Home
    @styles = Style.all
  end

  def ListOfCourses
    @user = current_user
    @courses = Topic.all
  end

  def ListOfLessons
    @topic = Topic.find(params[:id])
  end

  def Lesson
    @lesson = Lesson.find(params[:id])
    @comments = Comment.where("lesson_id = ?", @lesson.id).select("body, user_id")
  end
  
  def StyleDescription
    @style = Style.find(params[:id])
    
    if !current_user.blank?
       @topics = Topic.where(style_id:params[:id],instrument_id: current_user.profiles[0].instrument)
      if @topics.blank?
        @topics = Topic.where(style_id: params[:id])
      end
    else
      @topics = Topic.where(style_id: params[:id])
    end
    
    
  end
end
