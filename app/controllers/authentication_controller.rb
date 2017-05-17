class AuthenticationController < ApiController
  skip_before_action :authenticate, :only => [:authenticate] 

	def authenticate
		result = Auth::Social.call(params)
		render json: result, status: result[:status]
	end

end