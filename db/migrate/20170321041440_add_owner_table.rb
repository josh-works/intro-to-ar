class AddOwnerTable < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.text :name
    end
  end
end
