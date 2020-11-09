class GuestsController < ApplicationController
    def index
        @guest = Guest.all 

        render json: @guest, include: [:reservations]
    end

    def create
        @guest = Guest.create(
            name: params[:name],
            email: params[:email]
        )
    end
end
