class UsersController < ApplicationController

    before_action :authenticate_user!
    before_action :correct_user
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @posts = @user.posts
        @bookmark = Favorite.where(user_id: @user.id)
    end

    def edit
        @user = User.find(params[:id])
    end

    def new

    end

    def create

    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "変更しました"
            redirect_to user_path(@user.id)
        else
            flash[:notice] =　"変更に失敗しました"
            render :edit
        end
    end

    def destroy
        
    end

    def correct_user
    user = User.find(params[:id])
    if current_user != user
      flash[:notice] = "You cannot acceess this page :("
      redirect_to user_path(current_user)
    end
  end

    private

    def user_params
        params.require(:user).permit(:name, :profile_image, :email)
    end
end
