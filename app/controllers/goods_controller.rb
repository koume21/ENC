class GoodsController < ApplicationController
  before_action :set_good, only: %i[ show edit update destroy ]

  def index
    @goods = Good.all
  end
 
  def new
    @good = Good.new
  end
 
  def create
    good = current_user.good.new()
    good.save
  end


  def destroy
    good = current_user.good.find_by(good_id: good.id)
    good.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good
      @good = Good.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def good_params
      params.require(:good).permit(:user_id, :good_id)
    end
end
