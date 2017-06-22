class TrainingPlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :picture_url, :created_at
end
