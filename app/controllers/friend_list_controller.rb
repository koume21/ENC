class FriendListController < ApplicationController
    def index
        @friend_list = Friend.where(user_id: session[:login_id])
        @my_good = Good.where(user_id:session[:login_id])
    end
    def create_block
        block = Block.new(user_id: session[:login_id],block_id: params[:block_id])
        block.save
        redirect_to '/friend_list/index'
    end
end
