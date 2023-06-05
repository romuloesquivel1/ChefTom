module Api
  module V1
    class BookingsController < ApplicationController
      before_action :authenticate_user
      def create
        booking = Booking.new(booking_params)

        if booking.save
          render json: booking, status: :created
        else
          render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def index
        user = User.find(params[:user_id])
        bookings = user.bookings
        render json: bookings
      end

      def update
        booking = Booking.find(params[:id])
        if booking.update(booking_params)
          render json: booking
        else
          render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        booking = Booking.find(params[:id])
        booking.destroy
        head :no_content
      end

      private

      def booking_params
        params.require(:booking).permit(:user_id, :table_number, :booking_time, :guest_count)
      end
    end
  end
end
