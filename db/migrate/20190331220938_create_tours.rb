class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :country
      t.string :province

      t.timestamps
    end
  end
end
