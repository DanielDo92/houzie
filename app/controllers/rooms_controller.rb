class RoomsController < ApplicationController
  def index
    @room = current_user.room
    redirect_to room_path(@room) and return if  @room.present?
    redirect_to admin_root_path and return
  end

  def show
    @room = Room.find(params[:id])
  end
end
