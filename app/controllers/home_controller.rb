class HomeController < ApplicationController
	def home
		render json: "welcome to dribblers"
	end
end