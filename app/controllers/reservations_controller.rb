class ReservationsController < ApplicationController
    def index
        @reservations = Reservation.all 
        render json: @reservations, include: [:arrival, :property]
    end
    def create
        @reservation = Reservation.create(
            arrival_id: params[:arrival_id],
            property_id: params[:property_id]
        )

        render json: @reservation
    end
end
