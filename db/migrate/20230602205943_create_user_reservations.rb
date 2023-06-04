class CreateUserReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reservations do |t|
      t.date :date
      t.time :time
      t.integer :number_of_people
      t.text :special_requests
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
