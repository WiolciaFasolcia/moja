class StanRoweru < ActiveRecord::Base

	has_many :rower

	validates_uniqueness_of :nazwa
end
