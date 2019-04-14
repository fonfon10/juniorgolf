class Gender < ApplicationRecord
	has_many :tournaments
	has_many :users
end
