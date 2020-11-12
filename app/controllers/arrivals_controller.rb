class ArrivalsController < ApplicationController
    def index
        @arrivals = Arrival.all 

        render json: @arrivals
    end

    def create 
        @arrival = Arrival.create(
            checkin: params[:checkin],
            checkout: params[:checkout]
            
        )
        render json: @arrival
    end
end
