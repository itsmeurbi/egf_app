require 'test_helper'

class GoalsFlowsTest < ActionDispatch::IntegrationTest
  setup do
    karen = users(:karen)
    sign_in_user(karen)
    goal = goals(:karen_goal)
    @start_time = goal.start_time.strftime('%m/%d/%Y')
    @end_time = goal.end_time.strftime('%m/%d/%Y')
  end

  test 'can create goals' do
    get new_goal_url
  end

  test 'can list my goals' do
    get goals_url

    assert_select '.title', 'Mi meta'
    assert_select '.subtitle__text.subtitle__text--medium', 'Trayecto 1'
    assert_select '.timeframe', "#{@start_time} to #{@end_time}"
  end
end
