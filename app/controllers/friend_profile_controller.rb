class FriendProfileController < ApplicationController

    def show
        @users = User.find(params[:friend_id])
        @profile = @users.profile
    end
end