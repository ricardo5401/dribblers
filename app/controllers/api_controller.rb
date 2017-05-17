class ApiController < ActionController::API
	before_action :authenticate, :except => [:new]


	protected

	def authenticate
  	@current_user = Auth::ByToken.call(request.headers)
  	render json: static_fails_message, status: 401 unless @current_user
  end

  def static_fails_message
  	{ 
  		status: 401,
  		message: "unauthorized" 
  	}
  end
end