class FavoriteList < ApplicationRecord
    belongs_to :user
    has_many :list_locations
    has_many :locations, through: :list_locations
end
