class Api::CompaniesController < ApplicationController

  def index 
    @companies = Company.all 
    render json: @companies 
  end

  def show 
    @company = Company.find(params[:id])
    # render json: @company.to_json(include: :trips)
  end
end
