class Rate < ActiveRecord::Base
  validates :price, :presence => true
  validates :quality, :presence => true
  validates :punctuality, :presence => true
  validates :dealing, :presence => true
  validates :cleanliness, :presence => true

  belongs_to :worker
end
