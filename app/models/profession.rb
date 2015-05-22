class Profession < ActiveRecord::Base
	has_many :doctors

	validates_presence_of :name

end