class VenueTracksPlayedsController < ApplicationController
  def create
    @venue = Venue.find(params[:venue_id])
    @venue_tracks_played = VenueTracksPlayed.new(strong_params)
    @venue_tracks_played.save!
    # @tracked =  @venue_tracks_played.track_id
    # @venue_tracks_played.venue = @venue

    redirect_to venue_path(@venue)
  end

  private

  def strong_params

    params.permit(:track_id, :venue_id)
  end
end
