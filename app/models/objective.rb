class Objective < ApplicationRecord
  belongs_to :goal, inverse_of: :objective
  has_many :key_results, dependent: :destroy
  accepts_nested_attributes_for :key_results

  validates_presence_of :description
end
