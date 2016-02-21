class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @author = Author.find(1)
  end

  def show
    @comment = Comment.new
    @comments = @customer.comments
  end

  def new
    @post = Post.new
  end

  def create
   @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end

  end

  def edit
    @post = Post.new(post_params)
  end

  def update
  end

  def destroy
    @post = Post.new
  end

private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

end
