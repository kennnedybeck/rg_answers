 class AnswersController < ApplicationController
	def create
    	@question = Question.find(params[:question_id])
    	@answer = @question.answers.new(params_answer)
    	if @answer.save
      		redirect_to question_url(@question)
    	else
      		redirect_to question_url(@question)
    	end
  	end
  	def vote
    	@question = Question.find(params[:question_id])
    	@answer = Answer.find(params[:id])
    	@answer.votes += 1
    	@answer.save
    	redirect_to question_url(@question) 
  	end
private 
  def question_id
  params.require(:question_id).permit(:question_id)
  end
  def params_answer
  params.require(:answer).permit(:description, :votes, :question_id)
  end
end

