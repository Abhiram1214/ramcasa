class ProfilesController < ApplicationController

	def show
		@profile=User.find_by_id(params[:id])
		@status=@profile.statuses.order("created_at desc")

	end

    def follow
    	#logger.debug(params[:id])
    	@friend=current_user.relations.create(followed_id: params[:id])
    ##format.html{}
      @my_friend=User.find(params[:id])
    end
end
