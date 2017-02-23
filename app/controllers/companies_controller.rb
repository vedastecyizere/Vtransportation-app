class CompaniesController < ApplicationController

  def index 
    @companies = Company.all 
    render "index.html.erb"    
  end

  def show 
    @company = Company.find_by(id: params[:id])
    render "show.html.erb"    
  end

  def new
    
  end

  def create
    name = params[:name]
    description = params[:description]
    email = params[:email]
    phone_number = params[:phone_number]
    image = params[:image]
    company = Company.new({name: name, description: description, email: email, phone_number: phone_number, image: image})
    company.save
    flash[:info] ="New Company added"
    redirect_to "/companies/"    
  end
end
