class Topic < ActiveRecord::Base
    belongs_to :style
    belongs_to :instrument
    has_many :lessons
    
    
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
