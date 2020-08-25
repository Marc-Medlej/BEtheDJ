class RequestsController < ApplicationController
    def index
    end

    def create
        @request = Request.new
        @event = Event.find(params[:event_id])
        @request.event = @event
        @request.track = Track.find(params[:track_id])
        @request.user = current_user
        @request.save

        redirect_to event_path(@event)
    end
end
