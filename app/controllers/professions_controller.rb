class ProfessionsController < ApplicationController
	def index
	end

	def new
		@profession = Profession.new
	end

	def create
		@profession = Profession.create(profession_params)

		if @profession.valid?
			redirect_to professions_url
		else
			render :new
		end
	end


	private
	def profession_params
      params.require(:profession).permit(:name)
    end
end
