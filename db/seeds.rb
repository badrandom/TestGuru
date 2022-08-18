# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
categories = Category.create([{title: 'Frontend'}, {title: 'Backend'}])

tests = Test.create([{title: 'Ruby', level: 0, category_id: categories[1].id},
             {title: 'Rails', level: 1, category_id: categories[1].id},
              {title: 'Rails', level: 2, category_id: categories[1].id},
             {title: 'Javascript', level: 0, category_id: categories[0].id},
              {title: 'Javascript', level: 1, category_id: categories[0].id}])

test_ruby_0_id = tests[0].id
test_rails_1_id = tests[1].id
test_rails_2_id = tests[2].id
test_javascript_0_id = tests[3].id
test_javascript_1_id = tests[4].id

questions = Question.create([{body: 'Question 1', test_id: tests[0].id},
                  {body: 'Question 1', test_id: tests[1].id},
                 {body: 'Question 1', test_id: tests[2].id},
                 {body: 'Question 1', test_id: tests[3].id},
                 {body: 'Question 1', test_id: tests[4].id}])

question_1_ruby_0_id = questions[0].id
question_1_rails_1_id = questions[1].id
question_1_rails_2_id = questions[2].id
question_1_javascript_0_id = questions[3].id
question_1_javascript_1_id = questions[4].id

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

users = User.create([{name: 'Denis', surname: 'Varikhanov', email: 'denis.varihanov@ya.ru', password: '123'},
             {name: 'Igor', surname: 'Grechkin', email: 'dddd@ya.ru', password: '123'},
             {name: 'Pavel', surname: 'Umov', email: 'aaa@ya.ru', password: '123'}])

user_1_id = users[0].id
user_2_id = users[1].id
user_3_id = users[2].id

TestSession.create([{user_id: user_1_id, test_id: test_ruby_0_id, finished: true},
                    {user_id: user_1_id, test_id: test_rails_1_id, finished: false},
                    {user_id: user_2_id, test_id: test_ruby_0_id, finished: true},
                    {user_id: user_2_id, test_id: test_rails_1_id, finished: true},
                    {user_id: user_2_id, test_id: test_rails_2_id, finished: false},
                    {user_id: user_3_id, test_id: test_javascript_0_id, finished: true},
                    {user_id: user_3_id, test_id: test_javascript_1_id, finished: true}])