class TrainingActivity < ApplicationRecord
	belongs_to :training_plan
	has_one :activity
end
