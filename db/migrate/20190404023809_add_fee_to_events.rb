class AddFeeToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :fee, :decimal
    add_column :events, :url, :string
  end
end
