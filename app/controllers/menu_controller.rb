class MenuController < ApplicationController
	before_action :authenticate_user!

	private
		def authenticate_user!
			if not logged_in?
				redirect_to root_path
			end
  		end
end
