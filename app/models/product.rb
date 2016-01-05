class Product < ActiveRecord::Base

	belongs_to :business

	def read_price
		if self.price
			return self.price.fdiv(100)
		end
	end

end
