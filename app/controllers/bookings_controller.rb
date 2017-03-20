class BookingsController < ApplicationController
  
  def show 
    @booking = Booking.find_by(id: params[:id])
  end

  def create
    booking = Booking.new(trip_id: params[:trip_id], user_id: params[:user_id])
    if booking.valid?
      booking.save
      booking.trip.number_person -= 1
       
    end 
    redirect_to "/bookings/#{booking.id}"   
  end
end
