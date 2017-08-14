class LinksController < ApplicationController
	def new
		@survey=Survey.new
	end

	def index
		@surveys = Survey.all
	end

	def create
		@survey = Survey.new(survey_params)
		@a=0
		if @survey.save
			@a=1
			flash[:success] = "Survey Created!"
			redirect_to current_user
		else
			redirect_to '/newsurvey'
		end
	end

	def show
		@survey = Survey.find(params[:id])
		@options = []
		@questions = Question.where(survey_id: @survey.id)
	end


	private

		def survey_params
			params.require(:survey).permit(:name)
		end

end
