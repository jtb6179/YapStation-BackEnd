class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_name, :age, :bio, :location, :education_status
  
  has_many :babbles
  has_many :comments
end
