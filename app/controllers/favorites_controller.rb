class FavoritesController < ApplicationController

	def create
        user_id = current_user.id
        post = Post.find(params[:post_id])
        favorite = Favorite.new(post_id: post.id, user_id: user_id)
        favorite.save
        redirect_to posts_path(post.id)
    end
    
    def destroy
        post = Post.find(params[:post_id])
        favorite = current_user.favorite.find_by(post_id: post.id)
        favorite.destroy
        redirect_to posts_path(post)
    end
end
