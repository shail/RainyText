class RemoveZipcodeFromForecastAreas < ActiveRecord::Migration
  def up
    remove_column :forecast_areas, :zipcode
      end

  def down
    add_column :forecast_areas, :zipcode, :integer
  end
end
