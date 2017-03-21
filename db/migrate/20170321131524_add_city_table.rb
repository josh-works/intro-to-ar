class AddCityTable < ActiveRecord::Migration[5.0]
  def change
    create_table :city do |t|
      t.text :name
    end
  end
end
