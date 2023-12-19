class DoGoodController < ApplicationController

    def create
        @good_do_good = Good.new(good_id: params[:good_id], user_id: session[:login_id])
        @good_do_good.save
        redirect_to search_index_path
    end

    def destroy
        @good_do_good = Good.find_by(good_id: params[:good_id], user_id: session[:login_id])
        @good_do_good.destroy
        redirect_to search_index_path
    end

end
