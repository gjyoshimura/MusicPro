#rails generate migration CreateJoinTableStyleInstrument Style Instrument
class CreateJoinTableStyleInstrument < ActiveRecord::Migration
  def change
    create_join_table :Styles, :Instruments do |t|
      # t.index [:style_id, :instrument_id]
      # t.index [:instrument_id, :style_id]
    end
  end
end

# class Bookmark < ActiveRecord::Base
#   has_and_belongs_to_many :lists
# end
# app/model/List.rb

# class List < ActiveRecord::Base
#   has_and_belongs_to_many :bookmarks
# end
# create a new migration

# rails generate migration CreateJoinTableListBookmark List Bookmark
# Migrate

# rake db:migrate
