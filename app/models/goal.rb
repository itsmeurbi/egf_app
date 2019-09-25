class Goal < ApplicationRecord
  belongs_to :mentor, class_name: 'User', foreign_key: :mentor_id
  belongs_to :milestone
  belongs_to :user
  has_many :objectives
  has_many :resources, class_name: 'GoalResources', foreign_key: :goal_id
end
