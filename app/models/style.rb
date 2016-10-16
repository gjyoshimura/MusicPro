class Style < ActiveRecord::Base
     has_and_belongs_to_many :instruments
     has_many :profiles
     has_many :topics
     
    
     has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
     validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
