class BabbleSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id

  has_many :comments
  has_many :babble_likes
end
