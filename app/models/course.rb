class Course < ActiveRecord::Base

    has_and_belongs_to_many :users
    has_many :questions
    has_many :useranswers

    def unanswered_questions_for_user(user)
        questions = Array.new
        self.questions.all.each do |question|
            questions << question if !question.user_has_answered_correctly(user)
        end
        return questions
    end

end
