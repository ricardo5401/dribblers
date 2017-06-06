class TrainingPlan < ApplicationRecord
	mount_uploader :picture, PictureUploader
  has_many :training_activities
end
