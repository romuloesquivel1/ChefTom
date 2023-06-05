class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.time :time
      t.date :date
      t.integer :number_of_people
      t.text :special_requests

      t.timestamps
    end
  end
end
