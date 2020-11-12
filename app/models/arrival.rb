class Arrival < ApplicationRecord
    has_many :reservations
    has_many :properties, through: :reservations
end
