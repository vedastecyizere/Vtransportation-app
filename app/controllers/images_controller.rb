class ImagesController < ApplicationController

  def index
    @images = Image.all 
    return "index.html.erb" 
  end
end
