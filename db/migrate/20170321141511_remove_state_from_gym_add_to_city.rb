class RemoveStateFromGymAddToCity < ActiveRecord::Migration[5.0]
  def change
    change_table :climbing_gyms do |t|
      t.remove :state
    end

    change_table :cities do |t|
      t.text :state
    end

  end
end
