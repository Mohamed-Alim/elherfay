class Worker < ActiveRecord::Base

validates :name, presence: true
validates :telephone, presence: true
validates :region, presence: true
validates :worker_type, presence: true
has_many :rates, :dependent => :destroy

accepts_nested_attributes_for :rates
validates_associated :rates


def total_average
    x = Rate.where(:worker_id => self.id).average('price')
    y = Rate.where(:worker_id => self.id).average('quality')
    z = Rate.where(:worker_id => self.id).average('punctuality')
    m = Rate.where(:worker_id => self.id).average('dealing')
    n = Rate.where(:worker_id => self.id).average('cleanliness')
    average = (x+y+z+m+n)/5
  end
  
def average_price
  x = Rate.where(:worker_id => self.id).average('price')
end
def average_quality
  y = Rate.where(:worker_id => self.id).average('quality')
end
def average_punctuality
  z = Rate.where(:worker_id => self.id).average('punctuality')
end
def average_dealing
  m = Rate.where(:worker_id => self.id).average('dealing')
end
def average_cleanliness
  n = Rate.where(:worker_id => self.id).average('cleanliness')
end

def comment
  
end
end

