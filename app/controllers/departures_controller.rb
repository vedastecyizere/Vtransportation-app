class DeparturesController < ApplicationController

  def index
    @departures = Departure.all
    render "index.html.erb"
    
  end
end
