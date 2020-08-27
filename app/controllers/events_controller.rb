class EventsController < ApplicationController
    def show
      @event = Event.find(params[:id])
      
      if params[:query].present?
        @tracks = Track.joins(:event_tracks).where(event_tracks: { event_id: @event.id }).select('tracks.*').order(:already_played).where("artist @@ :query OR name @@ :query", query: "%#{params[:query]}%")
        @requested_tracks = Track.joins(:requests).where(requests: { event_id: @event.id }).where(requests: { user_id: current_user.id }).select('tracks.*').where("artist @@ :query OR name @@ :query", query: "%#{params[:query]}%")
        @played_tracks = Track.joins(:event_tracks).where(event_tracks: { already_played: true }).where(event_tracks: { event_id: @event.id }).select('tracks.*').where("artist @@ :query OR name @@ :query", query: "%#{params[:query]}%")
      else
        @tracks = Track.joins(:event_tracks).where(event_tracks: { event_id: @event.id }).select('tracks.*').order(:already_played)
        @requested_tracks = Track.joins(:requests, :event_tracks).where(requests: { event_id: @event.id }).where(requests: { user_id: current_user.id }).select('tracks.*').order(:already_played)
        @played_tracks = Track.joins(:event_tracks).where(event_tracks: { already_played: true }).where(event_tracks: { event_id: @event.id }).select('tracks.*')
      end
      
      @track_request_count = Track.joins(:requests).where(requests: { event_id: @event.id }).group('tracks.id').count
      @track_request_count = @track_request_count.sort_by {|_k, v| -v}.to_h
    end

    def new
      @event = Event.new
      @venue = Venue.find(params[:venue_id])
    end

    def create
      @event = Event.new(event_params)
      @event.user = current_user
      @venue = Venue.find(params[:venue_id])
      @event.venue = @venue
      @event.save
      redirect_to venue_path(@venue)
    end

    private

    def event_params
      params.require(:event).permit(:name, :date)
    end
end


