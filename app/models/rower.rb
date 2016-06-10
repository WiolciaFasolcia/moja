class Rower < ActiveRecord::Base
	has_many :wypozyczenia
	belongs_to :rodzaj_roweru
	belongs_to :stan_roweru
	belongs_to :rozmiar
end
