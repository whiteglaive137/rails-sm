class RegistrationsController < Devise::RegistrationsController
  skip_authorize_resource 
  private

  def sign_up_params
    params.require(:user).permit(:name, :server_id, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end
end