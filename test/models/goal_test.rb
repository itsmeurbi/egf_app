require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  setup do
    @mentor = users(:karen)
    @user = users(:jesus)
    @milestone = milestones(:mobile_1)
    @goal = goals(:karen_goal)
  end

  test 'should not save goal without start_time' do
    goal = Goal.new(end_time: '10/12/12', mentor: @mentor, user: @user, milestone: @milestone)
    assert_not goal.save, 'Saved the goal without start_time'
  end

  test 'should not save goal without end_time' do
    goal = Goal.new(start_time: '10/12/12', mentor: @mentor, user: @user, milestone: @milestone)
    assert_not goal.save, 'Saved the goal without end_time'
  end

  test 'should not save goal without mentor' do
    goal = Goal.new(start_time: '10/12/12', end_time: '10/12/12', user: @user, milestone: @milestone)
    assert_not goal.save, 'Saved the goal without mentor'
  end

  test 'should not save goal without assign to user' do
    goal = Goal.new(start_time: '10/12/12', end_time: '10/12/12', mentor: @mentor, milestone: @milestone)
    assert_not goal.save, 'Saved the goal without user'
  end

  test 'should not save goal without assign to milestone' do
    goal = Goal.new(start_time: '10/12/12', end_time: '10/12/12', user: @user, mentor: @mentor)
    assert_not goal.save, 'Saved the goal without milestone'
  end

  test '#mentor' do
    assert_equal 'Jesus Figueroa', @goal.mentor.name
  end

  test '#objective' do
    assert_equal 'Build my first mobile application', @goal.objective.description
  end

  test '#milestone' do
    assert_equal '4', @goal.milestone.level
  end

  test '#user' do
    assert_equal 'Karen Ventura', @goal.user.name
  end
end
