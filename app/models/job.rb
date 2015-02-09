class Job < ActiveRecord::Base
  belongs_to :quote
  belongs_to :maker
end
