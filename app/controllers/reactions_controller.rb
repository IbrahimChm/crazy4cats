class ReactionsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @reaction = @post.reactions.create(reaction_params)
      redirect_to post_path(@post)
    end
  
    private
  
    def reaction_params
      params.require(:reaction).permit(:reaction_type)
    end
  end