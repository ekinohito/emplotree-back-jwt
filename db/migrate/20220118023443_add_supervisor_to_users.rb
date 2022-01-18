class AddSupervisorToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :supervisor_email, :string
  end
end
