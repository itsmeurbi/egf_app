class Track < ApplicationRecord
  has_many :tasks
  has_many :milestones
  belongs_to :category
end
