class Babble < ApplicationRecord
    has_many :comments
    has_many :babble_likes
    belongs_to :user

end
