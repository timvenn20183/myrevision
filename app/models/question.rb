class Question < ActiveRecord::Base

    belongs_to :course
    has_many :answers
    has_many :useranswers

    def user_has_answered_correctly(user)
        return Useranswer.where(:user => user,:question => self).pluck(:answer_id).include?(self.correct_answer.id)
    end

    def correct_answer
        return self.answers.where(:correct_answer => true).first
    end

end
