class CreateProfileHasInstruments < ActiveRecord::Migration
  def change
    create_table :profile_has_instruments do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :instrument, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
