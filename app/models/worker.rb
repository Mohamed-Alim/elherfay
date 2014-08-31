class Worker < ActiveRecord::Base

validates :name, presence: true
validates :telephone, presence: true
validates :region, presence: true
validates :worker_type, presence: true
has_many :rates, :dependent => :destroy
belongs_to :business

accepts_nested_attributes_for :rates
validates_associated :rates


def total_average
    x = 0#rates.average('price')
    y = 0#rates.average('quality')
    z = 0#rates.average('punctuality')
    m = 0#rates.average('dealing')
    n = 0#rates.average('cleanliness')
    
    rates.each do |rate|
        x+=rate.price
        y+=rate.quality
        z+=rate.punctuality
        m+=rate.dealing
        n+=rate.cleanliness
    end
    
    
    average = (x.to_f/rates.size+y.to_f/rates.size+z.to_f/rates.size+m.to_f/rates.size+n.to_f/rates.size)/5
  end
  
def average_all
  x=y=z=m=n=0
  self.rates.each do |rate|
        x+=rate.price
        y+=rate.quality
        z+=rate.punctuality
        m+=rate.dealing
        n+=rate.cleanliness
  end

  x=x.to_f/rates.size# =2# Rate.where(:worker_id => self.id).average('price').round
  y=y.to_f/rates.size
  z=z.to_f/rates.size
  m=m.to_f/rates.size
  n=n.to_f/rates.size
 
  [x.round,y.round,z.round,m.round,n.round]
  
end

def average_price
  x = Rate.where(:worker_id => self.id).average('price').round
end
def average_quality
  y =Rate.where(:worker_id => self.id).average('quality').round
end
def average_punctuality
  z = Rate.where(:worker_id => self.id).average('punctuality').round
end
def average_dealing
  m = Rate.where(:worker_id => self.id).average('dealing').round
end
def average_cleanliness
  n = Rate.where(:worker_id => self.id).average('cleanliness').round
end

end
