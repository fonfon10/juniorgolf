class Tournament < ApplicationRecord
	belongs_to :tour 
	belongs_to :course 
	belongs_to :category 
	belongs_to :gender 
	belongs_to :level 

	has_many :competitions	





	scope :gender_filter, -> (gender_id) {
#		where('gender_id = ? OR gender_id = ? OR gender_id = ?", gender.to_s(2)[1], 2*gender.to_s(2)[0].to_i, all_gender)}
		where('gender_id IN (?)', gender_id)}


	scope :category_filter, -> (category_id) {
#		where('gender_id = ? OR gender_id = ? OR gender_id = ?", gender.to_s(2)[1], 2*gender.to_s(2)[0].to_i, all_gender)}
		where('category_id IN (?)', category_id)}


end
