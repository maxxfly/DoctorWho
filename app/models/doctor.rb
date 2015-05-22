class Doctor < ActiveRecord::Base
	belongs_to :profession

	validates_presence_of :first_name, :last_name, :address_1, :city, :country, :zip_code

	geocoded_by :address
	after_validation :geocode  

	def address
		[self.address_1, self.address_2, self.zip_code, self.city, self.country].compact.join(", ")
	end

end