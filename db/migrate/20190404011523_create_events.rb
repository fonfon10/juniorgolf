class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :tour_id
      t.integer :course_id
      t.integer :category_id
      t.integer :gender_id
      t.integer :level_id
      t.integer :days
      t.datetime :start_time
      t.datetime :reg_deadline
      t.boolean :qual_required
      t.text :comments

      t.timestamps
    end
  end
end
