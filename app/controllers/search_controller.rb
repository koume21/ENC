class SearchController < ApplicationController

  def index
    @good_ranks = User.find(Good.group(:good_id).order('count(good_id) desc').limit(3).pluck(:good_id))
  end

    @schools = School.all
  end
  
end
