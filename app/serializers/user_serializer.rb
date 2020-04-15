class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_name, :age, :bio, :location, :education_status
  
  has_many :babbles
  has_many :comments
  has_many :friends
  has_many :inverse_friends
end
