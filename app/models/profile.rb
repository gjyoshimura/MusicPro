class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :profile_has_instruments
  has_many :instruments, through: :profile_has_instruments
end
