class Rate < ActiveRecord::Base
  validates_numericality_of :quality, :in => 1..10
  validates :price,  presence: true, length: {minimum: 1, maximum: 10}
  validates :dealing,  presence: true, length: {minimum: 1, maximum: 10}
  validates :cleanliness,  presence: true, length: {minimum: 1, maximum: 10}
  validates :punctality,  presence: true, length: {minimum: 1, maximum: 10}

  belongs_to :worker
end
