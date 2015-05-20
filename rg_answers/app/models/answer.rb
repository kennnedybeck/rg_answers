class Answer < ActiveRecord::Base
 
  belongs_to :question
  #scope :by_votes, -> { where(by_votes: true) }
  #def by_votes
  	#order('votes DESC').first
  #end
 
end
# Answer.by_votes.create.by_votes # => true