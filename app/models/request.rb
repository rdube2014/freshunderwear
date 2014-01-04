class Request < ActiveRecord::Base

belongs_to :user

validates :needed_date, :presence => true
validates :time_needed, :presence => true
validates :delivery_city, :presence => true
validates :delivery_address, :presence => true

end
