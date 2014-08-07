class Rate < ActiveRecord::Base

  validates :price, :presence => true, length:{minimum:1 , maximum:10}
  validates :quality, :presence => true, length:{minimum:1 , maximum:10}
  validates :punctuality, :presence => true, length:{minimum:1 , maximum:10}
  validates :dealing, :presence => true, length:{minimum:1 , maximum:10}
  validates :cleanliness, :presence => true, length:{minimum:1 , maximum:10}
  belongs_to :worker
  
  
  # def total_average
    # x = Rate.average('price')
    # y = Rate.average('quality')
    # z = Rate.average('punctuality')
    # m = Rate.average('dealing')
    # n = Rate.average('cleanliness')
    # average = (x+y+z+m+n)/5
  # end
  
end
