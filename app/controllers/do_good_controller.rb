class DoGoodController < ApplicationController
    def create
        @good_do_good = Good.new(user_id: session[:login_id], good_id: params[:good_id])
        @good_do_good.save
        redirect_to '/search/index'
    end

    def destroy
        @good_do_good = Good.find_by(user_id: session[:login_id], good_id: params[:good_id])
        @good_do_good.destroy
        redirect_to '/search/index'
    end

end
