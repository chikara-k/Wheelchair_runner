class EventUsersController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    event_user = EventUser.new(attend_params)
    event_user.user_id = current_user.id
    event_user.event_id = event.id
    event_user.save
    redirect_to event_path(event)
  end

  def destroy
    EventUser.find_by(id: params[:id], event_id: params[:event_id]).destroy
    redirect_to event_path(params[:event_id])
  end

  private

  def attend_params
    params.require(:event_user).permit(:is_attend, :user_id, :event_id)
  end
end
