class ProfileHasInstrument < ActiveRecord::Base
  belongs_to :profile
  belongs_to :instrument
end
