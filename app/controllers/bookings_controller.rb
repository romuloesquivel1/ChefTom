class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    puts current_user.id
    @booking = current_user.bookings.build
  end

  def create       
    @current_user = current_user
    @booking = current_user.bookings.build(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
end

def update
  if @booking.update(booking_params)
    redirect_to @booking, notice: 'Booking was successfully updated.'
  else
    render :edit
  end
end

def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to bookings_path, notice: 'Booking was successfully canceled.'
end



  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:time, :date, :number_of_people, :special_requests)
  end
end


