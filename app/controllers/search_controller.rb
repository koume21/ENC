class SearchController < ApplicationController
  def index
    @schools = School.all
  end
  
end
