class AddStyleToTopic < ActiveRecord::Migration
  def change
    add_reference :topics, :style, index: true, foreign_key: true
  end
end
