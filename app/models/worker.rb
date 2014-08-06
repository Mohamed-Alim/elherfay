class Worker < ActiveRecord::Base

validates :name, presence: true
validates :telephone, presence: true
validates :my_column, presence: true
has_many :rates, :dependent => :destroy
accepts_nested_attributes_for :rates
validates_associated :rates
end

