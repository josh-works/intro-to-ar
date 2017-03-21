class AddCityIdToClimbingGymsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :climbing_gyms, :city, :city_id
  end
end
