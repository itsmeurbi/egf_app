class Task < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :resources
  belongs_to :milestone
  belongs_to :track
end
