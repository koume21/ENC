class FriendListController < ApplicationController
    def index
        @friend_list = Friend.where(user_id: session[:login_id])
        @my_good = Good.where(user_id:session[:login_id])
    end
end
