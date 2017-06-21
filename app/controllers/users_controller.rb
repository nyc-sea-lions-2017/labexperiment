class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def login
    @user = User.new
    # binding.pry
    # @user = User.find_by(email: params[:user][:email])
    #
    # if @user && @user.authenticate(params[:user][:password])
    #   session[:user_id] = @user.id
    #   erb :'users/show'
    # else
    #   @errors = ["Invalid Email or Password"]
    #   erb :'users/login'
    # end
  end

  def session

  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
