class Tank < ActiveRecord::Base
  has_many :notifications
  validates :name, presence: true, uniqueness: true
end
