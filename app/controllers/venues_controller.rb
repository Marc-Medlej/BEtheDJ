class VenuesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show ]
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

      # if @venues = Venue.search_by_name_and_location(params[:query])
      # else
      #   @venues = @venues = Venue.near("#{params[:query]}")
      # # @venues = Venue.where("location @@ :query", query: "%#{params[:query]}%")
      # end


      @venues = Venue.near("#{params[:query]}")

      @geo_venues = @venues.geocoded

      @markers = @geo_venues.map do |geo_venue|
      {
        lat: geo_venue.latitude,
        lng: geo_venue.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { venue: geo_venue }),
        style: geo_venue.club ? "marker2" : "marker1"
      }
      end
    end

    def show
     @venue = Venue.find(params[:id])
      #check if prams query exist
      #


      @events = @venue.events
      # @playlist_code = @venue.playlist_id
      @playlist_code = '4TaOLNlPlYlcPb2VxBPlkR'
      @playlist = RSpotify::Playlist.find_by_id(@playlist_code)
      # track_artist = @playlist.tracks.first.artists[0].name


      if params[:query].present?
        @tracks = @playlist.tracks.select { |track| track.name.include?(params[:query].capitalize) || track.artists.first.name.include?(params[:query].capitalize) }
      else
         @tracks = @playlist.tracks
      end
    end
end
