class Worker < ActiveRecord::Base

validates :name, presence: true
validates :telephone, presence: true
validates :my_column, presence: true
has_many :rates, :dependent => :destroy
accepts_nested_attributes_for :rates
validates_associated :rates


def total_average
    x = Rate.where(:worker_id => self.worker.id).average('price')
    y = Rate.where(:worker_id => self.worker.id).average('quality')
    z = Rate.where(:worker_id => self.worker.id).average('punctuality')
    m = Rate.where(:worker_id => self.worker.id).average('dealing')
    n = Rate.where(:worker_id => self.worker.id).average('cleanliness')
    average = (x+y+z+m+n)/5
  end
end

