class Event < ApplicationRecord
	belongs_to :tour 
	belongs_to :course 
	belongs_to :category 
	belongs_to :gender 
	belongs_to :level 
end
