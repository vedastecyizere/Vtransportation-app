class BookingsController < ApplicationController
  
  def show 
    @booking = Booking.find_by(id: params[:id])
  end

  def create
    booking = Booking.new(trip_id: params[:trip_id], user_id: current_user.id)
    booking.save 
    redirect_to "/bookings/#{booking.id}"


    
  end
end
