class RemoveIndexEmailFromAdminUsers < ActiveRecord::Migration[6.0]
  def change
    remove_index :admin_users, column: :email, unique: true
  end
end
