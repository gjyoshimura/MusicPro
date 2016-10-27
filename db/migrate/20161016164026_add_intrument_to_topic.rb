class AddIntrumentToTopic < ActiveRecord::Migration
  def change
    add_reference :topics, :instrument, index: true, foreign_key: true
  end
end
