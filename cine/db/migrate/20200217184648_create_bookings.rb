class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :client_name
      t.string :cedula
      t.string :email

      t.timestamps
    end
  end
end
