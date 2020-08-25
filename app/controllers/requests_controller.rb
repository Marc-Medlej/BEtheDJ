class RequestsController < ApplicationController
    def index
    end

    def create
        @request = Request.new
        @request.event = Event.find(params[:event_id])
        @request.track = Track.find(params[:track_id])
        @request.user = current_user
        @request.save
    end
end
