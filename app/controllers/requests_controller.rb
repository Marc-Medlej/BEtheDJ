class RequestsController < ApplicationController
    def index
        @event = Event.find(params[:event_id])
        @requested_tracks = Track.joins(:requests).where(requests: { event_id: @event.id }).where(requests: { user_id: current_user.id }).select('tracks.*, requests.*')
    end

    def create
        @request = Request.new
        @event = Event.find(params[:event_id])
        @request.event = @event
        @request.track = Track.find(params[:track_id])
        @request.user = current_user
        @tracks = @event.tracks
        @track_request_count = Track.joins(:requests).group('tracks.id').count

        if @request.save
            redirect_to event_path(@event)
        else
            flash[:alert] = "You have already requested the song"
            redirect_to event_path(@event)
        end

    end

    def destroy
        @request = Request.find(params[:id])
        @request.destroy
  
        redirect_to event_requests_path(@request.event)
    end
end
