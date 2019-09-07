class Milestone < ApplicationRecord
  has_many :tasks
  belongs_to :track
end
