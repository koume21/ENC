class BecomeFriendController < ApplicationController

    def create
        @user = User.find(session[:login_id])
        pertner = User.find(params[:friend_id])
        room_name = @user.profile.user_name + "&" + pertner.profile.user_name

        new_friend = Friend.new(user_id: session[:login_id],friend_id: params[:friend_id])
        pertner_friend = Friend.new(user_id: params[:friend_id],friend_id: session[:login_id])
        new_friend.save
        pertner_friend.save
        new_room = Room.new(name: room_name)
        new_room.save
        member_my_add = RoomMember.new(room_id: new_room.id, user_id: session[:login_id])
        member_pertner_add = RoomMember.new(room_id: new_room.id, user_id: params[:friend_id])
        member_my_add.save
        member_pertner_add.save
    end

end
