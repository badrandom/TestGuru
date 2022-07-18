# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([{title: 'Frontend'}, {title: 'Backend'}])
Test.create ([{title: 'Ruby', level: 0, category_id: 2}, {title: 'Rails', level: 1, category_id: 2},
              {title: 'Rails', level: 2, category_id: 2}, {title: 'Javascript', level: 0, category_id: 1},
              {title: 'Javascript', level: 1, category_id: 1}])
Question.create([{body: 'Question 1', test_id: 1}, {body: 'Question 1', test_id: 2},
                 {body: 'Question 1', test_id: 3}, {body: 'Question 1', test_id: 4},
                 {body: 'Question 1', test_id: 5}])
Answer.create([{question_id: 1, body: 'Incorrect', correct: false},
               {question_id: 1, body: 'Correct', correct: true},
               {question_id: 2, body: 'Incorrect', correct: false},
               {question_id: 2, body: 'Correct', correct: true},
               {question_id: 3, body: 'Incorrect', correct: false},
               {question_id: 3, body: 'Correct', correct: true},
               {question_id: 4, body: 'Incorrect', correct: false},
               {question_id: 4, body: 'Correct', correct: true},
               {question_id: 5, body: 'Incorrect', correct: false},
               {question_id: 5, body: 'Correct', correct: true}])
User.create([{name: 'Denis', surname: 'Varikhanov', email: 'denis.varihanov@ya.ru', password: '123'},
             {name: 'Igor', surname: 'Grechkin', email: 'dddd@ya.ru', password: '123'},
             {name: 'Pavel', surname: 'Umov', email: 'aaa@ya.ru', password: '123'}])
TestSession.create([{user_id: 1, test_id: 1, finished: true},
                    {user_id: 1, test_id: 2, finished: false},
                    {user_id: 2, test_id: 1, finished: true},
                    {user_id: 2, test_id: 2, finished: true},
                    {user_id: 2, test_id: 3, finished: false},
                    {user_id: 3, test_id: 4, finished: true},
                    {user_id: 3, test_id: 5, finished: true}])