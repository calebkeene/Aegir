class Tank < ActiveRecord::Base
  has_many :notifications
  has_many :pumps

  validates :name, presence: true, uniqueness: true
  validates :fish_number, presence: true
  validates :volume, presence: true

end
