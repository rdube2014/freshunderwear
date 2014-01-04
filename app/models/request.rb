class Request < ActiveRecord::Base

belongs_to :user

validates :request_text, :presence => true
validates :travel_to_city, :presence => true

end
