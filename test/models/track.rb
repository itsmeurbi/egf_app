require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  setup do
    @track = tracks(:mobile)
  end

  test '#milestones' do
    assert_equal 5, @track.milestones.size
  end

  test '#category' do
    assert_equal true, @track.category.present?
  end
end
