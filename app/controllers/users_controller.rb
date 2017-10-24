class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find_by! name: params[:id]
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success]="Поздравляю,Вы успешно зарегистрировались"
      redirect_to user_path(@user.name)
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end

end
