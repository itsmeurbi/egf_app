class Goal < ApplicationRecord
  belongs_to :mentor, class_name: 'User', foreign_key: :mentor_id
  belongs_to :milestone
  belongs_to :user
  has_many :objectives
  has_many :goal_resources, class_name: 'GoalResources', foreign_key: :goal_id
  has_many :resources, through: :goal_resources

  accepts_nested_attributes_for :objectives
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :mentor_id, presence: true
  validates :user_id, presence: true
  validates :milestone_id, presence: true
end
