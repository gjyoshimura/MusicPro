class RemoveRockStyleFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :rock_style, :integer
  end
end
