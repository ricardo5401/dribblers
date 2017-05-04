class User < ApplicationRecord
	has_many :subscriptions
	has_many :relationships
	has_many :activities
	has_many :events

	def current_subscription
		self.subscriptions.last
	end
end
