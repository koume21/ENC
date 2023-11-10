class SearchController < ApplicationController

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
    @school = params[:school][:id]

    p "***************************************"
    p params[:school][:id]
    p @school
    p "***************************************"

    # @search = School.where(id: @school)
    render :index
  end
end
