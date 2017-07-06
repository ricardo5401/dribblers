class ApplySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :model, :model_id, :active
end
