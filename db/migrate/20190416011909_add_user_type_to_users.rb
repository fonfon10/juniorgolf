class AddUserTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_type_id, :integer
  end
end
