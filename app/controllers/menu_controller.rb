class MenuController < ApplicationController
	before_action :authenticate_user!

	private
		def authenticate_user!
			if not logged_in?
				redirecto_to 'forbidden_login'
			end
  		end
end
