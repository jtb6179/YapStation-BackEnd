class BabbleLikeSerializer < ActiveModel::Serializer
  attributes :id, :a_like, :babble_id, :user_id
end
