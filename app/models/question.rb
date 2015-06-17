class Question < ActiveRecord::Base
  has_many :answers

  def print_answer
    self.answers.each do |answer|
       '#{answer[:description]}'
    end
  end
end


