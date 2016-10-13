class RemovePopStyleFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :pop_style, :integer
  end
end
