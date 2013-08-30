class Useranswer < ActiveRecord::Base

    belongs_to :user
    belongs_to :question
    belongs_to :course
    belongs_to :answer

end
