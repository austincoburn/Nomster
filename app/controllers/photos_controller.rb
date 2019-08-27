class PhotosController < ApplicationController
	before_action :authenticate_user!

	def create
		@place = Place.find(params[id])
		@place.photos.create(photo_params.merge(user :current_user))
		redirect_to place_path
	end
end
