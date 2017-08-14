class ReferencesController < ApplicationController
	def new
		@reference=Reference.new
		@question=Question.find(params[:type])
		@options=Option.where(question_id: @question.id)
	end
	
	def create
		@reference = Reference.new(reference_params)
		@reference.user_id=current_user.id
		if @reference.save
			flash[:success] = "Survey Created!"
			redirect_to current_user
		else
			redirect_to '/newsurvey'
		end
	end
	
	def index
		@references=Reference.all
		@users=User.all
		@options=Option.all
		@questions=Question.all
		@surveys=Survey.all
	end

	private
		def reference_params
			params.require(:reference).permit( :option_id)
		end

end
