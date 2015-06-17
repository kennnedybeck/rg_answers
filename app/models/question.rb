class Question < ActiveRecord::Base
  has_many :answers

  def display_answer
  	self.answers 
  end
  		
  #def top_answer
    #top_answer = self.answers.by_votes
      #"Be the first to answer this question!"
  #end
end


