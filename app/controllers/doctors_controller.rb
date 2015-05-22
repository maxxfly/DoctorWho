class DoctorsController < ApplicationController

	def index
		@doctors = Doctor.all
	end

	def new
		@doctor = Doctor.new
	end

	def create
		@doctor = Doctor.create(doctor_params)

		if @doctor.valid?
			redirect_to doctors_url
		else
			render :new
		end

	end



	private
	def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :address_1, :address_2, :city, :country, :zip_code, :profession_id)
    end
end