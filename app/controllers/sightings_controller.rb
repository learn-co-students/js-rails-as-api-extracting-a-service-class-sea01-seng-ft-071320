class SightingsController < ApplicationController
    def show
        sighting = Sighting.includes(:bird, :location).find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
