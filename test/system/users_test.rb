require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    assert_selector "b", text: "Iniciar sesión"
  end
end
