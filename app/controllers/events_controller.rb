class EventsController < ApplicationController
    def show
        @event = Event.find(params[:id])
        @tracks = @event.tracks
        @track_request_count = Track.joins(:requests).group('tracks.id').count
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
      redirect_to venues_path
    end

    private

    def event_params
      params.require(:event).permit(:name, :date)
    end
end


