class CreateForecastAreas < ActiveRecord::Migration
  def change
    create_table :forecast_areas do |t|
      t.integer :zipcode
      t.integer :phone_number
      t.datetime :time
      t.integer :user_id

      t.timestamps
    end
  end
end
