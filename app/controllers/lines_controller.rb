class LinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]
  authorize_resource

  def index
    @lines = Line.all
  end

  def show
  end

  def new
    @line = Line.new
    @event = Event.find params[:event]
    @rooms = @event.rooms
  end

  def edit
    @rooms = Room.all
  end

  def create
    @line = Line.new(line_params)

    respond_to do |format|
      if @line.save
        format.html { redirect_to event_path(@line.room.event), notice: 'Line was successfully created.' }
        format.json { render action: 'show', status: :created, location: @line }
      else
        format.html { render action: 'new' }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @line.update(line_params)
        format.html { redirect_to @line, notice: 'Line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @line.destroy
    respond_to do |format|
      format.html { redirect_to lines_url }
      format.json { head :no_content }
    end
  end

  private

  def set_line
    @line = Line.find(params[:id])
  end

  def line_params
    params.require(:line).permit(:name, :line_length, :room)
  end
end
