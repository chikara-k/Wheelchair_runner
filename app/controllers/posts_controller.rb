class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @all_posts = Post.all.order(id: "DESC")
    # @user_posts = current_user.posts
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
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "投稿を変更しました"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "投稿を削除しました"
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