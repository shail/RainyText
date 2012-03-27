class AddVerifiedToForecastAreas < ActiveRecord::Migration
  def change
    add_column :forecast_areas, :verified, :boolean, :default => false

  end
end
