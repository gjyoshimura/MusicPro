class AddTopicToLesson < ActiveRecord::Migration
  def change
    add_reference :lessons, :topic, index: true, foreign_key: true
  end
end
