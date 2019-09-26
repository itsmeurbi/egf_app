class Objective < ApplicationRecord
  belongs_to :goal
  has_many :key_results
end
