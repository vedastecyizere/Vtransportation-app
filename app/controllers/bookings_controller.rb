class BookingsController < ApplicationController
  
  def show 
    @booking = Booking.find_by(id: params[:id])
  end

  def payment
    @booking = Booking.find_by(id: params[:id])
  end

  def create
    booking = Booking.new(trip_id: params[:trip_id], user_id: params[:user_id])
    trip = Trip.find_by(id: params[:trip_id])
    if booking.valid?
      booking.save
      trip.reduce_available_ticket_by_one
      redirect_to "/bookings/payment/#{booking.id}"
      flash[:success] = "You have successfully booking a ticket!"
    else
      redirect_to "/companies/#{trip.company.id}"
      flash[:warning] = "No Ticket available here"
    end 
       
  end
end
