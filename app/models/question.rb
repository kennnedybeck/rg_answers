class Question < ActiveRecord::Base
  has_many :answers

  def print_answer
    self.answers.each do |answer|
       "hello" 
    end
  end
end


