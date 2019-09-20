class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :user_id
      t.string :time_booked
      t.integer :total
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
