class ChangesToTour < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tours, :province
  	rename_column :tours, :country, :country_id


  end
end
