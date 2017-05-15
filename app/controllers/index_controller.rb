class IndexController < ApplicationController
	before_action :authenticate_user!

	private
		def authenticate_user!
			if logged_in?
				redirect_to menu_path
			end
  		end
end
