class User < ApplicationRecord
    has_secure_password
    has_many :comments 
    has_many :favorite_lists
end



# this is for testing