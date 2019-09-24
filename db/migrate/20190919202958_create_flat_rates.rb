class CreateFlatRates < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_rates do |t|
      t.string :route
      t.float :duration

      t.timestamps
    end
  end
end
