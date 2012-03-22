class RemovePhoneNumberFromForecastsArea < ActiveRecord::Migration
  def up
    remove_column :forecast_areas, :phone_number
      end

  def down
    add_column :forecast_areas, :phone_number, :integer
  end
end
