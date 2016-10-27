class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :instrument
  belongs_to :style
end
