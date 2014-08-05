class Worker < ActiveRecord::Base
validates :name, presence: true
validates :telephone, presence: true

end
