class EventsController < ApplicationController
    def show
        @event = Event.find(params[:id])
        @tracks = @event.tracks
        @track_request_count = Track.joins(:requests).group('tracks.id').count
    end

    def new
    end

    def create
    end
end
