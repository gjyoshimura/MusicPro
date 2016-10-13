class RemoveClassicalStyleFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :classical_style, :integer
  end
end
