class SearchController < ApplicationController
  def index
    @schools = School.all
    @clubs = Club.all
    @types = Type.all
  end
  
end
