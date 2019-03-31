class Admin::RoomsController < Admin::ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render "new"
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to admin_rooms_path
  end
  private

  def room_params
    params.require(:room).permit(:name, :level, :price, :area, :suited)
  end
end
