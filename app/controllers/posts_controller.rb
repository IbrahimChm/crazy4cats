class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
  
    def show
      @post = Post.find(params[:id])
      @reactions = @post.reactions
      @comments = @post.comments
    end
  end
  