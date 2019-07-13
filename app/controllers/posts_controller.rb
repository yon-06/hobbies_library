class PostsController < ApplicationController

    def index
        @posts = Post.all.order(:created_at)
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit

    end

    def new
        @post = Genre.new
        @post.posts.build

    end

    def create
        @post = Genre.new(genre_params)
        @post.user_id = current_user.id

        if @post.save
            flash[:notice] = "投稿しました"
            redirect_to post_path(@post.id)
        else
            flash[:notice] = "投稿に失敗しました"
            render :index
        end
    end

    def update

    end

    def destroy
        
    end

    private

    def post_params
        params.require(:genre).permit(:id, :motion, :life, :art, :craft, :study, :other, :post_id, posts_attributes:[:title, :post_image, :user_id, :recommend, :appeal, :cost, :charm] )
    end
end
