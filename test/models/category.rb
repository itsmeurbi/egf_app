require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  setup do
    @category = categories(:building)
  end

  test '#milestones' do
    assert_equal 20, @category.milestones.size
  end
end
