class VideosController < ApplicationController

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)

		@video.save
		redirect_to @video
	end

	def show
		@video = Video.find(params[:id])
	end

	def edit
		@video = Video.find(params[:id])
	end

	def update
		@video = Video.find(params[:id])
		
		if @video.update(video_params)
			redirect_to @video
		else
			render 'edit'
		end
	end

	def index
		@videos = Video.all
	end

	def destroy
		@video = Video.find(params[:id])
		@video.destroy

		redirect_to videos_path
	end

	private 
		def video_params
			params.require(:video).permit(:artist, :description, :location, :video)
		end
end
