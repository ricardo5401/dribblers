class TrainingPlan < ApplicationRecord
	mount_uploader :picture, PictureUploader
    has_many :training_activities
    
    def picture_url
        self.picture.url
    end
    
end
