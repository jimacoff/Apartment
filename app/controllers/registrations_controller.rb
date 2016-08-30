class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :surname, :email, :location, :password, :password_confirmation, :role_id, :orderby)
  end

  def account_update_params
    params.require(:user).permit(:name, :surname, :email, :location, :password, :password_confirmation, :current_password)
  end
end