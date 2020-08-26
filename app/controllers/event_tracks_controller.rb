class EventTracksController < ApplicationController
    def update
      @event_track = EventTrack.find(params[:id])
      @event_track.update(already_played: true)
      @event = @event_track.event
      redirect_to event_path(@event)
    end
end
