class CompaniesController < ApplicationController

  def index 
    @companies = Company.all 
    render "index.html.erb"    
  end
end
