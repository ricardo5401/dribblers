class HomeController < HtmlController

	def home
		render json: "welcome to dribblers"
	end
	
end