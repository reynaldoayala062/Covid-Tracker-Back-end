class Location < ApplicationRecord
    has_many :list_location
    has_many :favorite_list, through: :list_location

end
