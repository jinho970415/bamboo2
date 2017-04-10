class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @cate=Cate.all
  end

  def create
    post = Post.new(post_params)
    post.save

    redirect_to posts_path
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
    @cate=Cate.all
    
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    
    redirect_to @post

  end
  
  def destroy
   @post = Post.find(params[:id])
   @post.delete
   
   redirect_to posts_path
  end
  
  
  
  
  
  
  
  
  

  def post_params
    params.require(:post).permit(:cate_id, :title, :content)
  end
end
