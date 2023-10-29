class RegistrationsController < ApplicationController
  def new
  end

  private

  def sign_up_params
    params.require(:user).permit(:family_name, :nickname, :email, :password, :password_confirmation)
  end
end
