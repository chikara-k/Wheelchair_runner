class MypagesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(current_user.id)
    @user_mypage = User.find(params[:id])
    @all_posts = @user_mypage.posts
    posts = Post.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    @ranking_posts = posts.first(5)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to mypage_path(@user.id)
    else
      render "edit"
    end
  end

  def confirm
    @user = User.find(params[:id])
  end

  def hide
    @user = User.find(current_user.id)
    @user.update(is_active: false)
    p @user
    reset_session
    flash[:notice] = "退会しました。"
    redirect_to root_path
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
