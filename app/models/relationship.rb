class Relationship < ApplicationRecord
	belongs_to :user

	def friend
		User.find_by(id: self.friend_id)
	end
end
