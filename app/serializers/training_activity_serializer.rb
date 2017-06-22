class TrainingActivitySerializer < ActiveModel::Serializer
  attributes :id, :training_plan_id, :shoot_count, :with_time, :expected_time, 
             :created_at, :description, :picture_url, :name, :created_at
end
