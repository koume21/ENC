class FriendListController < ApplicationController
    def index
        @friend_list = Friend.where(user_id: session[:login_id])
        @my_good = Good.where(user_id:session[:login_id])
        @profiles = []
    end
    def search
        @friend_user_name = params[:friend_user_name]
        @friends = @friends.joins(:user).where("(users.login LIKE ? OR profiles.user_name LIKE ?)", "%#{@friend_user_name}%", "%#{@friend_user_name}%") if @friend_user_name.present?
      render :index
    end
    def create_block
        block = Block.new(user_id: session[:login_id],block_id: params[:block_id])
        block.save
        redirect_to '/friend_list/index'
    end
end
