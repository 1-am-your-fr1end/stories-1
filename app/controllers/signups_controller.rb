class SignupsController < ApplicationController

  def new
    @signup = Signup.new
  end

  def create
    signup = Signup.create(signup_params)
    if signup.save
      redirect_to root_path
    else
      redirect_to new_signup_path
    end
  end

  private
  def signup_params
    params.require(:signup).permit(:firstname, :email)
  end
  
end
