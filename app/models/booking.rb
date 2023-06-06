class Booking < ApplicationRecord
  belongs_to :user

  validates :date, :time, :number_of_people, :special_requests, presence: true
end
