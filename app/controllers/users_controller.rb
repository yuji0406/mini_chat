class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @messages = Message.where(user_id: params[:id])
  end

  def edit
    @user = current_user
  end
  
  def index
    @users  = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "登録が完了しました！"
      redirect_to @user
    else
      flash.now[:danger] = "登録に失敗しました・・・"
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name,
                                   :email,
                                   :user_image,
                                   :introduction,
                                   :password,
                                   :password_confirmation
                                   )
    end
end
