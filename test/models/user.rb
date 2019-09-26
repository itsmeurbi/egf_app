require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:karen)
  end

  test '#goals' do
    assert_equal 1, @user.goals.size
  end

  test 'should returns the concatenation of first_name and last_name of the current user' do
    complete_name = "#{@user.first_name} #{@user.last_name}".titleize
    assert_equal complete_name, @user.name
  end

  test 'should returs all the mentors except the current user' do
    mentors = User.mentors(@user.email)
    assert_equal 1, mentors.size
    assert_equal 'Jesus Figueroa', mentors.first.name
  end
end
