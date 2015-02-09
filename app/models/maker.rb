class Maker < ActiveRecord::Base
  belongs_to :user
  has_many :quotes
  has_many :jobs, through: :quotes
end
