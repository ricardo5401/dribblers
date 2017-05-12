module Auth
	class Social

		def self.call(params)
			user = User.find_by(email: params[:email])
			user ? respond(user) : create(params)
		end

		private

		def self.create(params)
  		user = User.new(email: params[:email], first_name: params[:first_name],
  					 last_name: params[:last_name])
  		if user.save!
        token = params[:token] || JsonWebToken.encode(user_id: user.id)
  			user.update_attribute(:token, token)
  			respond(user)
  		else
  			respond(user, 401)
  		end
  	end

  	def self.respond(user, status = 202)
  		{
  			status: status,
  			user: ActiveModelSerializers::SerializableResource.new(user)
  		}
  	end

	end
end