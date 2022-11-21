class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :timeslot
      t.references :teachers, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
