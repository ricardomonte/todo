class RegistrationsController < Devise::RegistrationsController
  protected

  def sign_up_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :email)
  end

end