class CompaniesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index 
    @companies = Company.all 
    render "index.html.erb"    
  end

  def show 
    if params[:id] == "random"
      @company = Company.all.sample
    else 
      @company = Company.find(params[:id])
    end     
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

  def edit
    @company = Company.find(params[:id]) 

  end 

  def update
    company = Company.find(params[:id])
    company.assign_attributes({
      name: params[:name],
      description: params[:description],
      email: params[:email],
      phone_number: params[:phone_number],
      image: params[:image]
    })

    company.save
    flash[:info] = "Company List Updated"
    redirect_to "/companies/#{company.id}"
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    flash[:danger] = "Your company has been deleted"
    redirect_to "/companies/"  
  end

  def search
    search_query = params[:search_input]
    @companies = Company.where("name ILIKE ? OR description ILIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @companies.empty?
      flash[:info] = "No result found"
    end 
    render :index
  end
end
