class Quote < ActiveRecord::Base
  belongs_to :order
  has_one :job
  belongs_to :maker
end
