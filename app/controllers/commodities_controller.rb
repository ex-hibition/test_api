class CommoditiesController < ApplicationController
  def index
    @commodities = Commodity.all
    respond_to do |format|
      format.json { render json: @commodities }
    end
  end

  def create
    @commodity = Commodity.new(commodity_params)

    respond_to do |format|
      if @commodity.save
        format.json { render :show, status: :created }
      else
        format.json { render json: @commodity.errors, status: :unprocessable_entry }
      end
    end
  end

  def show
    @commodity = Commodity.find(params[:id])

    respond_to do |format|
      format.json { render json: @commodity }
    end
  end


  private
    def commodity_params
     params.require(:commodity).permit(:code, :name, :close_date)
    end

end
