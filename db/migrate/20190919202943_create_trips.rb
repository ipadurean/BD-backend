class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :user_id
      t.integer :time_booked
      t.datetime :start_time
      t.datetime :end_time
      t.float :total
      t.text :note
      t.string :address
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
