class AddElementsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :datetime
    add_column :users, :ovga_team, :boolean
    add_column :users, :gender_id, :integer
    add_column :users, :category_id, :integer
  end
end
