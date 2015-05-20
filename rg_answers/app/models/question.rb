class Question < ActiveRecord::Base
 
  has_many :answers
  #def top_answer
    #top_answer = self.answers.by_votes
      #"Be the first to answer this question!"
  #end
end

