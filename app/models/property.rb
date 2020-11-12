class Property < ApplicationRecord
    has_many :reservations
    has_many :arrivals, through: :reservations
end
