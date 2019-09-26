require 'test_helper'

class ObjectiveTest < ActiveSupport::TestCase
  setup do
    @objective = objective(:karen_objective)
  end

  test '#goal' do
    assert_equal true, @objective.goal.present?
  end

  test '#key_results' do
    assert_equal 1, @objective.key_results.size
  end
end
