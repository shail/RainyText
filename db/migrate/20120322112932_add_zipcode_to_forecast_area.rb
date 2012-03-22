class AddZipcodeToForecastArea < ActiveRecord::Migration
  def change
    add_column :forecast_areas, :zipcode, :string

  end
end
