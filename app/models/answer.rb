class Answer < ActiveRecord::Base
 
  belongs_to :question
  scope :by_votes, :order => "votes DESC"

  def users_comments
    questions = Question.includes(answers: [:description]).all
    answers = questions.map(&:answers).flatten
    @user_comments = answers.select do |answer|
      answer.description. == params[:username]
    end
  end
end
  #scope :by_votes, -> { where(by_votes: true) }
  #def by_votes
  	#order('votes DESC').first
  #end
