class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :video_url
      t.string :author
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
