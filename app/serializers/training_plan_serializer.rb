class TrainingPlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :shoot_type, :created_at
  has_many :training_activities, each_serializer: TrainingActivitySerializer
end
