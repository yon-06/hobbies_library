class PostsController < ApplicationController

    def index
        @posts = Post.all.order(:created_at)
    end

    def show

    end

    def edit

    end

    def new

    end

    def create

    end

    def update

    end

    def destroy
        
    end
end
