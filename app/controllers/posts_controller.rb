class PostsController < ApplicationController
  before_action:authenticate_user
	
  def index
   @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user.id)
  end

  def new
    @post = Post.new
  end

  def create
    puts params
    @post = Post.new(post_params)
	  
    if @post.save
     flash[:notice] ="投稿を作成しました"
     redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end
	
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end
	
  private
	
  def post_params
    params.require(:post).permit(:user_id, :area_id, :timeframe_id, :content)
  end
	
	
end