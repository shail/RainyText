class AddVerifyCodeToForecastAreas < ActiveRecord::Migration
  def change
    add_column :forecast_areas, :verify_code, :string

  end
end
