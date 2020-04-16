class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_name, :age, :bio, :location, :education_status
  
  has_many :babbles
  has_many :comments
  has_many :received_friend_request
  has_many :given_friendships
end
