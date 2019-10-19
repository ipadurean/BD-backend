class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :user_id
      t.string :time_booked
      t.string :start_time
      t.string :end_time
      t.float :total
      t.text :note
      t.string :address
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
