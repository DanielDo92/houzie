class Admin::RoomsController < Admin::ApplicationController
  def index
    @rooms = Room.all
  end
end
