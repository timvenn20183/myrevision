class Question < ActiveRecord::Base

    belongs_to :course
    has_many :answers
    has_many :useranswers

end
