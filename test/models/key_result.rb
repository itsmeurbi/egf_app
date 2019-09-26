require 'test_helper'

class KeyResultTest < ActiveSupport::TestCase
  setup do
    @key_result = key_results(:key_result_1)
  end

  test '#objective' do
    assert_equal 'Build my first mobile application', @key_result.objective.description
  end

  test 'should not save key result without description' do
    key_result = KeyResult.new(completed: true)
    assert_not key_result.save, 'Saved the key result without description'
  end
end
