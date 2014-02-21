module Api
  class PostsController < BaseController
    def index
      if params[:ids]
        @posts = Post.find(params[:ids])
      else
        @posts = Post.all
      end

      # raise NotAuthorizedError unless PostPolicy.new(current_user, @posts).index?
      respond_with @posts
    end

    def show
      @post = Post.find(params[:id])
      respond_with @post
    end
  end
end
