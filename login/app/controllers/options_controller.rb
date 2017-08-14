class OptionsController < ApplicationController
	def new
		@option=Option.new
	end
	
	def create
		@option = Option.new(option_params)
		if @option.save
			flash[:success] = "Option Created!"
			redirect_to current_user
		else
			redirect_to '/newoptions'
		end
	end
	
	def edit
		@option = Option.find(params[:id])
	end

	def update
		@option = Option.find(params[:id])
		if @option.update_attributes(option_params)
			flash[:success] = "Option updated"
			redirect_to current_user
		else
			render 'edit'
		end
	end

	def destroy
		Option.find(params[:id]).destroy
		flash[:success] = "Question deleted"
		redirect_to current_user
	end


	private
		def option_params
			params.require(:option).permit(:q_option,  :question_id)
		end

end
