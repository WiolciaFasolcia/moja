class Klient < ActiveRecord::Base


	validates_presence_of :name, :surname, :pesel, :nr_dowodu
	validates_each :name, :surname do |model, attr, value| 
	model.errors.add(attr, 'musi zaczynać sie z duzej litery') if value =~ /\A[a-z]/
	end
	validates_uniqueness_of :pesel
	validates_length_of :pesel, :in => 11..11
	validates_length_of :nr_dowodu, :in => 9..9	

	has_many :wypozyczenia


end
