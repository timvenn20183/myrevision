class Course < ActiveRecord::Base

    has_and_belongs_to_many :users
    has_many :questions
    has_many :useranswers

end
