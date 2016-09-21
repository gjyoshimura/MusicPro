class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :rock_style
      t.integer :pop_style
      t.integer :classical_style
      t.integer :level
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
