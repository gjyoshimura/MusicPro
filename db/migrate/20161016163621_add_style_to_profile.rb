class AddStyleToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :style, index: true, foreign_key: true
  end
end
