class User < ApplicationRecord
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  # validates :time, presence: true
  # validates :date, presence: true
  # validates :number_of_people, presence: true
  # validates :special_requests, presence: true, length: { maximum: 100 }
end
