class PostsController < ApplicationController
    def index
        @posts = Post.all.order('created_at DESC')
    end
    def new
        @post = Post.new
    end
    def create
        @post = Post.create(post_params)
        redirect_to posts_path
    end
    def show
        @post = Post.find(params[:id])
    end

    private
        def post_params
            params.require(:post).permit(:image, :caption)
        end
end
