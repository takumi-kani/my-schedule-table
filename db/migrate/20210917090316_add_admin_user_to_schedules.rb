class AddAdminUserToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_reference :schedules, :admin_user, foreign_key: true
  end
end
