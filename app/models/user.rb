class User < ActiveRecord::Base
  has_one :maker
  has_many :orders
end
