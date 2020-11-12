class Reservation < ApplicationRecord
    belongs_to :arrival
    belongs_to :property
end
