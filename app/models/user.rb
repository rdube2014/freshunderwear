class User < ActiveRecord::Base

has_many :requests

def full_name                                                                                                                                                                                     
  ([first_name, last_name] - ['']).compact.join(' ')                         
end

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :user_name, :presence => true



end
