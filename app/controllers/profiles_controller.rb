class ProfilesController < ApplicationController
	def new
		@profile = Profile.all
	end

	def show 
		@profile = Profile.find(params[:id])
	end

	def create
		@profile = Profile.new(profiles_params)
    @profile.save
    redirect_to @profile
	end

	private
		def profiles_params
		params.require(:profiles).permit(:name, :about, :image)
	end
end
