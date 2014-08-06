class Rate < ActiveRecord::Base

  validates :price, :presence => true, length:{minimum:1 , maximum:10}
  validates :quality, :presence => true, length:{minimum:1 , maximum:10}
  validates :punctuality, :presence => true, length:{minimum:1 , maximum:10}
  validates :dealing, :presence => true, length:{minimum:1 , maximum:10}
  validates :cleanliness, :presence => true, length:{minimum:1 , maximum:10}
  belongs_to :worker
end
