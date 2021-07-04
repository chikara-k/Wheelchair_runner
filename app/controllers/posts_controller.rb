class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @all_posts = Post.all.order(id: "DESC")
    posts = Post.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    @ranking_posts = posts.first(5)
  end

  def new
    @post = Post.new
  end

  def create
    # paramsに.merge(user_id: current_user.id)を記載することで解決
    @post = Post.new(post_params)
    if @post.save!
      flash[:success] ="投稿しました"
      redirect_to posts_path
    else
      @post = Post.all
      render :new
    end
  end

  def show
    @user = User.find(current_user.id)
    @post = Post.find(params[:id])
    @user_mypage = @post.user
    @comment = Comment.new
    posts = Post.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    @ranking_posts = posts.first(5)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path
    else
      render :index
    end
  end


  private

  def post_params
    params.require(:post).permit(:user_id,
                                 :name,
                                 :address,
                                 :image,
                                 :introduction,
                                 :toilet,
                                 :recommend_level,
                                 :road_level,
                                 :parking,
                                 :rental_bicycle).merge(user_id: current_user.id)
  end
end
