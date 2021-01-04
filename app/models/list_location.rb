class ListLocation < ApplicationRecord
    belongs_to :favorite_list
    belongs_to :location
end
