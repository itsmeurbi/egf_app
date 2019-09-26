require 'test_helper'

class MilestoneTest < ActiveSupport::TestCase
  setup do
    @milestone = milestones(:web_client_1)
  end

  test '#milestone' do
    assert_equal 'web client', @milestone.track.name
  end
end
