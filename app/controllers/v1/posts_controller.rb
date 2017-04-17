class V1::PostsController < V1::BaseController
  before_action :load_post, only: [:update, :show, :destroy]

  def index
    @posts = Post.all
    render json: success_message("Get list post successfully", @posts)
  end

  def show
    render json: success_message("Get post successfully", @post)
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: success_message("Create post successfully", post)
    else
      render json: error_message("Create post successfully")
    end
  end

  def update
    if @post.update(post_params)
      render json: success_message("Create post successfully", @post)
    else
      render json: error_message("Create post successfully")
    end
  end

  def destroy
    if @post.destroy
      render json: success_message("Create post successfully", @post)
    else
      render json: error_message("Create post successfully")
    end
  end

  private
  def load_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :content)
  end
end