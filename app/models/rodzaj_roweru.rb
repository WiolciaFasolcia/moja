class RodzajRoweru < ActiveRecord::Base
	has_many :rower

	validates_uniqueness_of :rodzaj
end
