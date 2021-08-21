class BookingsController < ApplicationController
    def index
    end
  
    def show
      @bookings = Booking.all
    end
  
    def new
      @booking = Booking.new
    end
  
    def create
      @booking = current_user.bookings.build(booking_params)
      @booking.save
      redirect_to booking_path(@booking)
    end
  
    def home
    end
  
    def destroy
      @booking = current_user.bookings.find(params[:id])
      @booking.destroy
      redirect_to booking_path
    end
  
    def edit
    end
  
    private
    def booking_params
      params.require(:booking).permit(:room_type, :start_date, :last_date, :adults ,:children, :user_id)
    end
end
