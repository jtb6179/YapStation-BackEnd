class User < ApplicationRecord
    has_many :babbles
    has_many :comments
    
    has_secure_password 
end
