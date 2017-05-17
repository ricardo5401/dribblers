class Activity < ApplicationRecord
	belongs_to :user
	belongs_to :training_activity
end
