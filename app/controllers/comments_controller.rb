class CommentsController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		comment = current_user.comment.new(commnet_params)
		comment.post_id = post.id
		comment.save
		redirect_to posts_path(post)
	end

	private

	def comment_params
		params.require(:commnet).permit(:user_id, :post_id, :commnet)
	end
end
