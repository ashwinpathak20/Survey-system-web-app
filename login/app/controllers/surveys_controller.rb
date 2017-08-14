class SurveysController < ApplicationController
	def new
		@survey=Survey.new
	end
	
	def index
		@surveys = Survey.all
	end

	def create
		@survey = Survey.new(survey_params)
		if @survey.save
			flash[:success] = "Survey Created!"
			redirect_to current_user
		else
			redirect_to '/newsurvey'
		end
	end
	
	def show
		@survey = Survey.find(params[:id])
		@questions = Question.where(survey_id: @survey.id)
	end


	def edit
		@survey = Survey.find(params[:id])
	end

	def update
		@survey = Survey.find(params[:id])
		if @survey.update_attributes(survey_params)
			flash[:success] = "Survey updated"
			redirect_to current_user
		else
			render 'edit'
		end
	end

	def destroy
		Survey.find(params[:id]).destroy
		flash[:success] = "Survey deleted"
		redirect_to current_user
	end

	private
		def survey_params
			params.require(:survey).permit(:name)
		end
end
