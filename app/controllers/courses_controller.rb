class CoursesController < ApplicationController

	def revision
        @course = Course.find(decrypt(params[:id]))
        @questions_answered = current_user.useranswers.where(:course => @course).pluck(:question_id).uniq.count
        @percentage_answered = ((@questions_answered.to_f/@course.questions.count.to_f)*100).to_i
	end

    def revise
        @course = Course.find(decrypt(params[:id]))
        @unanswered_questions = @course.unanswered_questions_for_user(current_user)
        @question = @unanswered_questions[rand(@unanswered_questions.count)]
    end

    def submit_answer
        @answer = Answer.find(decrypt(params[:radio]))
        @useranswer = Useranswer.new
        @useranswer.user = current_user
        @useranswer.question = @answer.question
        @useranswer.answer = @answer
        @useranswer.course = @answer.question.course
        @useranswer.save
    end

end
