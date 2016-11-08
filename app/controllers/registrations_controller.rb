class RegistrationsController < ApplicationController
  # Displays our landing Page
  def index
  end

  # Displays successful registration page
  def register
    @user = User.new(user_id: params[:user_id], password: params[:password])
    @user.save
  end

end
