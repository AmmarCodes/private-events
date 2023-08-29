class AttendancesController < ApplicationController
  before_action :authenticate_user!
  def attend
    event = Event.find(params[:event_id])

    event.attendees << current_user
    redirect_back fallback_location: events_url
  end
end
