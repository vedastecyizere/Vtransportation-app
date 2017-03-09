class UsersController < ApplicationController

  def index
    @users = User.all
    render "index.html.erb" 
  end
  def user
    render "new.html.erb"   
  end

  def create
    user = User.new(
      first_name:params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.id 
      flash[:success] = "Dear #{user.first_name}, you have successfully created an account!"
      redirect_to "/"
    else 
      flash[:warning] = "Invalid email or password"
      redirect_to "/signup"
    end    
  end
end
