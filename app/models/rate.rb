class Rate < ActiveRecord::Base
<<<<<<< HEAD
  validates_numericality_of :quality, :in => 1..10
  validates :price,  presence: true, length: {minimum: 1, maximum: 10}
  validates :dealing,  presence: true, length: {minimum: 1, maximum: 10}
  validates :cleanliness,  presence: true, length: {minimum: 1, maximum: 10}
  validates :punctality,  presence: true, length: {minimum: 1, maximum: 10}
=======
  validates :price, :presence => true, length:{minimum:1 , maximum:10}
  validates :quality, :presence => true, length:{minimum:1 , maximum:10}
  validates :punctuality, :presence => true, length:{minimum:1 , maximum:10}
  validates :dealing, :presence => true, length:{minimum:1 , maximum:10}
  validates :cleanliness, :presence => true, length:{minimum:1 , maximum:10}
>>>>>>> 526d521b0529d37f8359c3b5354e9541d63ec1a6

  belongs_to :worker
end
