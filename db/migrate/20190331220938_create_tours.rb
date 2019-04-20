class CreateTours < ActiveRecord::Migration[5.1]
  def change
#tours
    create_table :tours do |t|
      t.string :name
      t.integer :country_id
      t.integer :province_id
      t.string :url
      t.string :acronym
      t.timestamps
    end
  end

#Countries
  def change
    create_table :countries do |t|
      t.string :name

      t.timestamps
    end
  end

#provinces
 def change
    create_table :provinces do |t|
      t.string :name

      t.timestamps
    end
  end

#Courses
  def change
    create_table :courses do |t|
      t.string :name
      t.string :city
      t.integer :province_id
      t.integer :country_id
      t.string :address
      t.string :zip
      t.string :url

      t.timestamps
    end
  end

#Tournaments
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
      t.datetime :end_time
      t.datetime :reg_deadline
      t.boolean :qual_required
      t.text :comments
      t.string :url
      t.decimal :fee

      t.timestamps
    end
  end
#competitions
  def change
    create_table :competitions do |t|
      t.integer :tournament_id
      t.integer :status_id
      t.integer :user_id

      t.timestamps
    end
  end

#statuses
  def change
    create_table :statuses do |t|
      t.string :name

      t.timestamps
    end
  end

#user_types
  def change
    create_table :user_types do |t|
      t.string :name

      t.timestamps
    end

  
end
