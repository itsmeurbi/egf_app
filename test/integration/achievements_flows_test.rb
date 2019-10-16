require 'test_helper'

class AchievementsFlowsTest < ActionDispatch::IntegrationTest
  setup do
    karen = users(:karen)
    sign_in_user(karen)
  end

  test 'can list achievements' do
    get achievements_url

    assert_response :success
    assert_select '.title', 'Trayectoria profesional'
  end
end
