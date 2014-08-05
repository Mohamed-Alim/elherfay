class Worker < ActiveRecord::Base

validates :name, presence: true
validates :telephone, presence: true
has_many :rates
accepts_nested_attributes_for :rates
validates_associated :rates
  

end

