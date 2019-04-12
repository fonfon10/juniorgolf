class AddEndTimeToTournaments < ActiveRecord::Migration[5.1]
  def change
    add_column :tournaments, :end_time, :datetime
  end
end
