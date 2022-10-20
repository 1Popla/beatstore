class CommentsController < ApplicationController
    before_action :authenticate_user!
    
	def create
		@beat = Beat.find(params[:beat_id])
	 	@comment = @beat.comments.create(params[:comment].permit(:name, :comment))
		redirect_to beat_path(@beat)	
	end

	def destroy
		@beat = Beat.find(params[:beat_id])
		@comment = @beat.comments.find(params[:id])
		@comment.destroy
		redirect_to beat_path(@beat)
	end
end