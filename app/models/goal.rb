class Goal < ApplicationRecord
  has_many :goal_resources, class_name: 'GoalResources', foreign_key: :goal_id
  belongs_to :mentor, class_name: 'User', foreign_key: :mentor_id
  has_many :resources, through: :goal_resources
  has_one :objective, dependent: :destroy
  belongs_to :milestone
  belongs_to :user
  accepts_nested_attributes_for :objective

  validates_presence_of  :start_time, :end_time, :mentor_id, :user_id, :milestone_id
end
