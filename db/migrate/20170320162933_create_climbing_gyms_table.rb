class CreateClimbingGymsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :climbing_gyms do |t|
      t.text :name
      t.text :city
      t.text :state
      t.text :owned_by
    end
  end
end
