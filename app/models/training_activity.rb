class TrainingActivity < ApplicationRecord
	belongs_to :training_plan
	has_one :activity
	mount_uploader :picture, PictureUploader
	
	def picture_url
        self.picture.url
    end
    
end
