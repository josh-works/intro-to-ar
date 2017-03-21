class ChangeOwnedByToOwnerId < ActiveRecord::Migration[5.0]
  def change
    rename_column :climbing_gyms, :owned_by, :owner_id
  end
end
