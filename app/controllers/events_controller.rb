class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def show
    @event = Event.find(params[:id])
    @event_users = EventUser.where(event_id: @event.id)
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to events_path
    else
      render :index
    end
  end

  private

  def event_params
    params.require(:event).permit(:user_id,
                                  :title,
                                  :begin_time,
                                  :finish_time,
                                  :place,
                                  :memo,
                                  :image,
                                  :genre).merge(user_id: current_user.id)
  end
end
