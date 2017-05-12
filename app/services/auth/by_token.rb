module Auth
	class ByToken

		def self.call(headers = {})
			token = http_auth_header(headers)
			token ? find_user(token) : nil
		end

		private

		def self.find_user(token)
  		user = User.find_by(token: token)
  		user ? user : nil
  	end

		def self.http_auth_header(headers)
  		auth = headers['Authorization'] 
  		auth ? auth.split(' ').last : nil
  	end

	end
end