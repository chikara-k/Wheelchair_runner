class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @all_posts = Post.all
    @user_posts = current_user.posts
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:user_id,
                                 :post_id,
                                 :name,
                                 :image_id,
                                 :introduction,
                                 :toilet,
                                 :recommend_level,
                                 :road_level,
                                 :parking,
                                 :rental_bicycle)
  end
end
