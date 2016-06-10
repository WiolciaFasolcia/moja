class Rozmiar < ActiveRecord::Base
		has_many :rower

	validates_uniqueness_of :rozmiar
end
