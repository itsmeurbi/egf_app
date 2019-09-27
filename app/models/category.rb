class Category < ApplicationRecord
  has_many :tracks
  has_many :milestones, through: :tracks
end
