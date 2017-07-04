class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :training_activity_id, :failed, :asserted, 
             :started_at, :finished_at, :created_at
  belongs_to :training_activity
end
