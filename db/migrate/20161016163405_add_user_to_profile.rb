# usado para hasmany belongsto
#rails g migration AddUserToProfile user:references
class AddUserToProfile < ActiveRecord::Migration
  def change
    add_reference :profiles, :user, index: true, foreign_key: true
  end
end
