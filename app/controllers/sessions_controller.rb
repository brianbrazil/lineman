class SessionsController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]
  authorize_resource

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
    @session = Session.new
    @event = Event.find params[:event]
    @rooms = @event.rooms
  end

  def edit
    @rooms = Room.all
  end

  def create
    @session = Session.new(line_params)

    respond_to do |format|
      if @session.save
        format.html { redirect_to event_path(@session.room.event), notice: 'Session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @session }
      else
        format.html { render action: 'new' }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @session.update(line_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @session.destroy
    respond_to do |format|
      format.html { redirect_to lines_url }
      format.json { head :no_content }
    end
  end

  private

  def set_line
    @session = Session.find(params[:id])
  end

  def line_params
    params.require(:session).permit(:name, :line_length, :room)
  end
end
