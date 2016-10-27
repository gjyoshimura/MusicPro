class AddInstrumentToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :instrument, index: true, foreign_key: true
  end
end
