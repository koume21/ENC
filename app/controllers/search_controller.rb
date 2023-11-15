class SearchController < ApplicationController
  before_action :login_session

  def index
    @good_ranks = User.find(Good.group(:good_id).order('count(good_id) desc').limit(3).pluck(:good_id))
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
  end
  
  def search
    @good_ranks = User.find(Good.group(:good_id).order('count(good_id) desc').limit(3).pluck(:good_id))
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
    # @school = params[:school][:id]

    

    # @search = School.where(id: @school)
    render :index
  end
  private
  def login_session
    if session[:login_id] == nil
      flash[:notice] = 'ログインしていません'
      redirect_to '/'
    end
  end
end
