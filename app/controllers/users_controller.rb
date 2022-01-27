class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
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
                                   :campany_name, 
                                   :email,
                                   :is_admin,
                                   :introduction,
                                   :password, 
                                   :password_confirmation
                                   )
    end
end
