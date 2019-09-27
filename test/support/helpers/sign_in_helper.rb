module SignInHelper
  def sign_in_user(user)
    ApplicationController.any_instance.stubs(:current_user).returns(user)
  end
end
