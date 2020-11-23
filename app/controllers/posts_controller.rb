class PostsController < ApplicationController


    def like
        post = Post.find(params[:id])
        post.likes += 1
        post.save
        redirect_to post_path(post)
    end

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(params[:id])
        redirect_to posts_path(post)
    end

    def update
        post = Post.find(params[:id])
        post.update(strong_params)
        redirect_to posts_path(post)

    end

    private

    def strong_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end


end

