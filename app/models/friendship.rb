class Friendship < ApplicationRecord
  # The user asking to be friends
  belongs_to :given_friend_request, foreign_key: :user_id, class_name: "User"

  # The user being followed
  belongs_to :user_being_friended, foreign_key: :friend_id, class_name: "User"
end
