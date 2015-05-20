class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end	
	def new
		@question = Question.new
	end
	def create
		@question = Question.new(question_params)	
		if @question.save
			redirect_to questions_url
		else
			render action: "new"
		end
	end
	def edit
		@question = Question.find(question_id)	
	end
	def update
		@question = Question.find (question_id)
		if @question.update_attributes(question_params)
      		redirect_to questions_path
    	else
      		render action: "edit"
    	end
  	end	
  	def show
    	@question = Question.find(question_id)
  	end
	def destroy
    	@question = Question.find(question_id)
    	@question.destroy
    	redirect_to questions_url
  	end
private 
  def question_params
 	params.require(:question).permit(:name, :answer, :id)
 end
  def question_id
 	params.permit(:id)[:id]
 end

end
