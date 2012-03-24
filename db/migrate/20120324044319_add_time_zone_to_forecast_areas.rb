class AddTimeZoneToForecastAreas < ActiveRecord::Migration
  def change
    add_column :forecast_areas, :forecast_time_zone, :string

  end
end
