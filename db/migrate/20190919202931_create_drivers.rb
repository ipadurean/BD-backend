class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :username
      t.string :phone_number
      t.string :photo
      t.text :description
      t.float :rate
      t.string :car
      t.string :car_photo
      t.float :rating
      t.string :off_duty

      t.timestamps
    end
  end
end
