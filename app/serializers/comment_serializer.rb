class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id,  :babble_id
end
