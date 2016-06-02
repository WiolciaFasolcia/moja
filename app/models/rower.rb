class Rower < ActiveRecord::Base
	has_many :wypozyczenia
	belongs_to :rodzaj_roweru
end
