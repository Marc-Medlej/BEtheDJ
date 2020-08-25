class RequestsController < ApplicationController
    def index
        @event = Event.find(params[:id])
        @requested_tracks = Track.joins(:requests).where(requests: { event_id: @event.id }).where(requests: { user_id: current_user.id })    
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
            flash[:notice] = "You have already requested the song"
            render 'events/show' 
        end

    end
end
