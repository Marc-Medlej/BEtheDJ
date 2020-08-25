class VenuesController < ApplicationController
  def index
    # if params[:query].present?
    #   @venues = Venue.where("location @@ :query OR venue_name @@ :query", query: "%#{params[:query]}%")
    # else
    #   @venues = Venue.all
    # end


    #   @venues = Venue.geocoded

    #   @markers = @venues.map do |venue|
    #     {
    #       lat: venue.latitude,
    #       lng: venue.longitude,
    #       infoWindow: render_to_string(partial: "info_window", locals: { venue: venue })
    #     }
    #   end
    # end

      @venues = Venue.where("location @@ :query", query: "%#{params[:query]}%")

      @geo_venues = @venues.geocoded

      @markers = @geo_venues.map do |geo_venue|
      {
        lat: geo_venue.latitude,
        lng: geo_venue.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { venue: geo_venue })
      }
      end
    end

    def show
    end
end
