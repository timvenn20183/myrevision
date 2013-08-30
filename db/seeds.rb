# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# test data
course = Course.new
    course.name = "Test course"
    course.active = true
    course.description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
course.save

user = User.new
    user.email = "1"
    user.password = "1"
    user.cell = "1"
    user.banned = false
    user.firstname = "John"
    user.surname = "Doe"
    user.courses << course
user.save

question = Question.new
    question.course_id = 1
    question.title = "This is a simple question. 1 + 1 = ?"
question.save

answer = Answer.new
    answer.title = "1"
    answer.question_id = 1
    answer.correct_answer = false
    answer.explain = "It's just wrong"
answer.save

answer = Answer.new
    answer.title = "2"
    answer.question_id = 1
    answer.correct_answer = true
    answer.explain = "Welcome to maths"
answer.save

answer = Answer.new
    answer.title = "3"
    answer.question_id = 1
    answer.correct_answer = false
    answer.explain = "It's just wrong"
answer.save

answer = Answer.new
    answer.title = "4"
    answer.question_id = 1
    answer.correct_answer = false
    answer.explain = "It's just wrong"
answer.save

answer = Answer.new
    answer.title = "5"
    answer.question_id = 1
    answer.correct_answer = false
    answer.explain = "It's just wrong"
answer.save
