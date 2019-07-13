class GenresController < ApplicationController

	def index
	end

	def new
        @genre = Genre.new
        
        @genre = @genre.posts.build
   

    end

    def create
        @genre = Genre.new(genre_params)
        @genre.user_id = current_user.id

        if @genre.save
            flash[:notice] = "投稿しました"
            redirect_to post_path(@post.id)
        else
            flash[:notice] = "投稿に失敗しました"
            render :index
        end
    end

	def art_show
	end

	def craft_show
	end

	def life_show
	end

	def motion_show
	end

	def other_show
	end

	def study_show
	end

	private

    def post_params
        params.require(:genre).permit(:id, :motion, :life, :art, :craft, :study, :other, :post_id, posts_attributes:[:title, :post_image, :user_id, :recommend, :appeal, :cost, :charm] )
    end
end
