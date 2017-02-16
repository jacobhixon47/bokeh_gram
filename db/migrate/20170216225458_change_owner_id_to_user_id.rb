class ChangeOwnerIdToUserId < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :owner_id
    add_column :images, :user_id, :integer
  end
end
