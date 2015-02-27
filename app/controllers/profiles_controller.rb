class ProfilesController < ApplicationController

	def show
		@profile=User.find_by_id(params[:id])
		@status=@profile.statuses.order("created_at desc")
	end


end
