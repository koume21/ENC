class DoGoodController < ApplicationController

    def create
        @good_do_good = Good.new(good_id: params[:good_id], user_id: session[:login_id])
        @good_do_good.save
        @my_good = Good.where(user_id:session[:login_id])
    end

    def destroy
        @good_do_good = Good.find_by(good_id: params[:good_id], user_id: session[:login_id])
        @good_do_good.destroy
        @my_good = Good.where(user_id:session[:login_id])
    end

end
