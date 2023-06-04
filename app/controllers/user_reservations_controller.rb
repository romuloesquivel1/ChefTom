class UserReservationsController < ApplicationController
  def create
    @user_reservation = UserReservation.new(user_reservation_params)

    if @user_reservation.save
      redirect_to current_user, notice: "Reservation was successfully created."
    else
      render "application/reservation" # Render the reservation form again in case of errors
    end
  end

  private

  def user_reservation_params
    params.require(:user_reservation).permit(:user_reservation_date, :user_reservation_time, :user_reservation_number_of_people, :user_reservation_special_requests)
  end
end
