class CoursesController < ApplicationController

	def revision
        @course = Course.find(decrypt(params[:id]))
        @questions_answered = @course.questions.count - @course.incomplete_questions_for_user(current_user).count
        @percentage_answered = ((@questions_answered.to_f/@course.questions.count.to_f)*100).to_i
	end

    def revise
        @course = Course.find(decrypt(params[:id]))
        @unanswered_questions = @course.incomplete_questions_for_user(current_user)
        @question = @unanswered_questions[rand(@unanswered_questions.count)]
        respond_to do |format|
            format.js
        end
    end

    def submit_answer
        @answer = Answer.find(decrypt(params[:radio]))
        @time = params[:time]
        @useranswer = Useranswer.new
        @useranswer.seconds = Time.now - @time.to_time
        @useranswer.user = current_user
        @useranswer.question = @answer.question
        @useranswer.answer = @answer
        @useranswer.course = @answer.question.course
        @useranswer.save
        respond_to do |format|
            format.js { render :action => 'revision_complete' } if @answer.question.course.incomplete_questions_for_user(current_user).count == 0
            format.js
        end
    end

end
