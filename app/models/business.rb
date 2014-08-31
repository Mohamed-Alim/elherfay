class Business < ActiveRecord::Base
  
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates :picture, presence: true
  has_many :workers, :dependent => :destroy
  
end
