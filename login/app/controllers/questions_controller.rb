class QuestionsController < ApplicationController

	def new
		@question=Question.new
	end
	
	def create
		@question = Question.new(question_params)
		if @question.save
			flash[:success] = "Question Created!"
			redirect_to current_user
		else
			redirect_to '/newquestions'
		end
	end
	
	def show
		@question = Question.find(params[:id])
		@options = Option.where(question_id: @question.id)
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
		if @question.update_attributes(question_params)
			flash[:success] = "Question updated"
			redirect_to current_user
		else
			render 'edit'
		end
	end

	def destroy
		Question.find(params[:id]).destroy
		flash[:success] = "Question deleted"
		redirect_to current_user
	end

	private
		def question_params
			params.require(:question).permit(:q_name, :survey_id, :q_definition)
		end

end
