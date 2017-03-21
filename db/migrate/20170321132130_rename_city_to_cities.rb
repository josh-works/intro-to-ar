class RenameCityToCities < ActiveRecord::Migration[5.0]
  def change
    rename_table :city, :cities
  end
end
