class PostsController < ApplicationController
  def index
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
  end

  def create
    Post.create
    post.create(content: params[:content])
    radirect_to "/Posts"
  end

end