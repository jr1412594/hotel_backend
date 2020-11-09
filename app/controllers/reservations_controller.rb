class ReservationsController < ApplicationController
    def index
        @reservations = Reservation.all 
        render json: @reservations, include: [:guest, :property]
    end
    def create
        @reservation = Reservation.create(
            user_id: params[:user_id],
            property_id: params[:property_id]
        )

        render json: @reservation
    end
end
