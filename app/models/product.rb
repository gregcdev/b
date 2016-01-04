class Product < ActiveRecord::Base

	belongs_to :user

	def read_price
		self.price.fdiv(100)
	end

end
