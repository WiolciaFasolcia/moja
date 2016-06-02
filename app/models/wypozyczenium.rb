class Wypozyczenium < ActiveRecord::Base
	belongs_to :rower
 	belongs_to :klient

 	def to_percent
		finished = self.tasks.where(:done => true).size
		if finished != 0 then
			i = (finished.to_f/self.tasks.size.to_f) * 100
			i.to_i
		else
			i = 0
		end
	end


 def validate_date_end
 errors.add(:date_end, "jest wcześniejsza od obecnej!") unless self.date_end >= Date.today
 end

 def validate_date_begin
 errors.add(:date_begin, " klucza jest późniejszy niż czas zwrotu!") unless self.date_begin < self.date_end
 end
end
