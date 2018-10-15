class GagesController < ApplicationController
  def index
    if params['query'].present?
      @gages = Gage.search_by_name(params['query'])
    else
    @gages = Gage.all
    end
  end

  def show
    @gage = Gage.find(params[:id])
  end

  def new
    @gage = Gage.new
  end

  def create
    @gage = Gage.new(gage_params)
    @gage.save
    redirect_to gages_path
  end

  private

  def gage_params
    params.require(:gage).permit(:name, :photo, :audio)
  end
end
