class EventUsersController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    event_user = EventUser.new
    event_user.user_id = current_user.id
    event_user.event_id = event.id
    event_user.save
    redirect_to event_path(event)
  end

  def destroy
    event = Event.find(params[:event_id])
    event_user = current_user.event_users.find_by(event_id: event.id)
    event_user.destroy
    redirect_to event_path(event)
  end
end
