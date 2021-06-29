class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.user_id = current_user.id
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    unless @event.user == current_user
      redirect_to events_path
    end
  end

  def update
  end

  def show
  end

  def destroy
  end
end
