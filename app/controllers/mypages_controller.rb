class MypagesController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @user_mypage = User.find(params[:id])
    @all_posts = @user_mypage.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "登録情報が編集されました"
      redirect_to mypage_path(@user.id)
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :user_status,
                                 :is_active,
                                 :profile_image,
                                 :introduction,
                                 :experience)
  end
end
