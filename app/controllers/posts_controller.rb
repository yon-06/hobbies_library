class PostsController < ApplicationController

    before_action :authenticate_user!, only: [:edit, :update, :new, :create]
    before_action :correct_user
    def index
        @posts = Post.all.order(created_at: :desc)
        @ranking = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
    end

    def random
        @posts = Post.all.order("RANDOM()")
        @ranking = Post.find(Favorite.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
    end


    def show
        @post = Post.find(params[:id])
        @post_comment = Comment.new
    end

    def edit
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new

    end

    def create
        @post = Post.new(post_params)
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
        @post = Post.find(params[:id])
        if @post.update(post_params)
            flash[:notice] = "編集しました"
            redirect_to post_path(@post.id)
        else
            flash[:notice] = "編集に失敗しました"
            render :edit
        end
    end

    def destroy
        
    end

    def genre_index
    end

    def art
        @posts = Post.where(genre: 2).order(created_at: :desc)
    end

    def craft
        @posts = Post.where(genre: 3).order(created_at: :desc)
    end

    def life
        @posts = Post.where(genre: 1).order(created_at: :desc)
    end

    def motion
        @posts = Post.where(genre: 0).order(created_at: :desc)
        
    end

    def study
        @posts = Post.where(genre: 4).order(created_at: :desc)
    end

    def other
        @posts = Post.where(genre: 5).order(created_at: :desc)
    end

    def correct_user
    user = current_user
    if current_user != user
      flash[:notice] = "You cannot acceess this page :("
      redirect_to posts_path
    end
  end

    private

    def post_params
        params.require(:post).permit(:title, :post_image, :user_id, :recommend, :appeal, :cost, :charm, :genre, :keyword )
    end

    def search_params
        params.require(:post).permit(:keyword)
    end
end
