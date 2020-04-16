class User < ApplicationRecord
    has_many :babbles
    has_many :comments
    has_many :received_friend_request, foreign_key: :friend_id, class_name: "Friendship"
    has_many :friends, through: :received_friend_request, source: :given_friend_request
    has_many :given_friendships, foreign_key: :user_id, class_name: "Friendship"
    has_many :people_who_friended_me, through: :given_friendships, source: :user_being_friended
    has_secure_password 
end
