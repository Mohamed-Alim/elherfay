class Worker < ActiveRecord::Base
<<<<<<< HEAD
=======

validates :name, presence: true
validates :telephone, presence: true
has_many :rates, :dependent => :destroy
accepts_nested_attributes_for :rates
validates_associated :rates
>>>>>>> 526d521b0529d37f8359c3b5354e9541d63ec1a6
  

end

