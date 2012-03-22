class AddPhoneNumberToForecastArea < ActiveRecord::Migration
  def change
    add_column :forecast_areas, :phone_number, :string

  end
end
