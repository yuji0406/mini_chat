class RoomsController < ApplicationController
  def index
    @rooms = current_user.rooms
    @users = []
    @rooms.each do |room|
      if room.users.first == current_user
        @users << room.users.second
      else
        @users << room.users.first
      end
  end
  
  def show
    room = Room.find(params[:id])
    if room.users.first == current_user
      @user = room.users.second
    else
      @user = room.users.first
    end
    my_room_ids = current_user.user_rooms.pluck(:room_id)
    unless chat_room = UserRoom.find_by(user_id: @user.id, room_id: my_room_ids)
      @room = Room.create
      UserRoom.create(user_id: current_user.id, room_id: @room.id)
      UserRoom.create(user_id: @user.id, room_id: @room.id)
    end
  end
end
