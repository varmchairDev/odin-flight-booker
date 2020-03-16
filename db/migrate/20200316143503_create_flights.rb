class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :take_of_time
      t.datetime :arrival_time
      t.integer :start_id
      t.integer :target_id

      t.timestamps
    end
  end
end
