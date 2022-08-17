# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([{title: 'Frontend'}, {title: 'Backend'}])
backend_id = Category.find_by(title: 'Backend').id
frontend_id = Category.find_by(title: 'Frontend').id
Test.create([{title: 'Ruby', level: 0, category_id: backend_id},
             {title: 'Rails', level: 1, category_id: backend_id},
              {title: 'Rails', level: 2, category_id: backend_id},
             {title: 'Javascript', level: 0, category_id: frontend_id},
              {title: 'Javascript', level: 1, category_id: frontend_id}])

Question.create([{body: 'Question 1', test_id: Test.find_by(title: 'Ruby', level: 0).id},
                  {body: 'Question 1', test_id: Test.find_by(title: 'Rails', level: 1).id},
                 {body: 'Question 1', test_id: Test.find_by(title: 'Rails', level: 2).id},
                 {body: 'Question 1', test_id: Test.find_by(title: 'Javascript', level: 0).id},
                 {body: 'Question 1', test_id: Test.find_by(title: 'Javascript', level: 1).id}])

question_1_ruby_0_id = Question.find_by(test_id: Test.find_by(title: 'Ruby', level: 0).id).id
question_1_rails_1_id = Question.find_by(test_id: Test.find_by(title: 'Rails', level: 1).id).id
question_1_rails_2_id = Question.find_by(test_id: Test.find_by(title: 'Rails', level: 2).id).id
question_1_javascript_0_id = Question.find_by(test_id: Test.find_by(title: 'Javascript', level: 0).id).id
question_1_javascript_1_id = Question.find_by(test_id: Test.find_by(title: 'Javascript', level: 1).id).id

Answer.create([{question_id: question_1_ruby_0_id, body: 'Incorrect', correct: false},
               {question_id: question_1_ruby_0_id, body: 'Correct', correct: true},
               {question_id: question_1_rails_1_id, body: 'Incorrect', correct: false},
               {question_id: question_1_rails_1_id, body: 'Correct', correct: true},
               {question_id: question_1_rails_2_id, body: 'Incorrect', correct: false},
               {question_id: question_1_rails_2_id, body: 'Correct', correct: true},
               {question_id: question_1_javascript_0_id, body: 'Incorrect', correct: false},
               {question_id: question_1_javascript_0_id, body: 'Correct', correct: true},
               {question_id: question_1_javascript_1_id, body: 'Incorrect', correct: false},
               {question_id: question_1_javascript_1_id, body: 'Correct', correct: true}])

User.create([{name: 'Denis', surname: 'Varikhanov', email: 'denis.varihanov@ya.ru', password: '123'},
             {name: 'Igor', surname: 'Grechkin', email: 'dddd@ya.ru', password: '123'},
             {name: 'Pavel', surname: 'Umov', email: 'aaa@ya.ru', password: '123'}])

user_1_id = User.find_by(name: 'Denis', surname: 'Varikhanov').id
user_2_id = User.find_by(name: 'Igor', surname: 'Grechkin').id
user_3_id = User.find_by(name: 'Pavel', surname: 'Umov').id

test_ruby_0_id = Test.find_by(title: 'Ruby', level: 0).id
test_rails_1_id = Test.find_by(title: 'Rails', level: 1).id
test_rails_2_id = Test.find_by(title: 'Rails', level: 2).id
test_javascript_0_id = Test.find_by(title: 'Javascript', level: 0).id
test_javascript_1_id = Test.find_by(title: 'Javascript', level: 1).id

TestSession.create([{user_id: user_1_id, test_id: test_ruby_0_id, finished: true},
                    {user_id: user_1_id, test_id: test_rails_1_id, finished: false},
                    {user_id: user_2_id, test_id: test_ruby_0_id, finished: true},
                    {user_id: user_2_id, test_id: test_rails_1_id, finished: true},
                    {user_id: user_2_id, test_id: test_rails_2_id, finished: false},
                    {user_id: user_3_id, test_id: test_javascript_0_id, finished: true},
                    {user_id: user_3_id, test_id: test_javascript_1_id, finished: true}])