# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Poll.destroy_all
# Question.destroy_all
# AnswerChoice.destroy_all
# Response.destroy_all

# users = User.create([{ username: 'Jackson'}, { username: 'Rick'}])
# polls = Poll.create([{title: 'Moon Poll', author_id: users.first.id},
#                      {title: 'Mars Poll', author_id: users[1].id}])
# question0 = Question.create(question: 'Is the moon made of cheese?',
#                             poll_id: polls.first.id)
# question1 = Question.create(question: 'Is the moon flat?',
#                             poll_id: polls.first.id)
# answer_choice_q0_a0 = AnswerChoice.create(answer_choice: 'True',
#                                           question_id: question0.id)
# answer_choice_q0_a1 = AnswerChoice.create(answer_choice: 'False',
#                                           question_id: question0.id)
# response1 = Response.create(user_id: users.first.id, answer_choice_id: answer_choice_q0_a0.id)
# response2 = Response.create(user_id: users[1].id, answer_choice_id: answer_choice_q0_a1.id)

# puts '-------------------'
# puts polls.first.title
# puts '-------------------'
# puts question0.question
# puts '-------------------'
# puts answer_choice_q0_a0.answer_choice
# puts '-------------------'
# puts answer_choice_q0_a1.answer_choice
# puts '-------------------'
# puts response1.user_id
# puts response1.answer_choice_id
# puts '-------------------'

User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all

  u1 = User.create!(username: 'Markov')
  u2 = User.create!(username: 'Gizmo')

  p1 = Poll.create!(title: 'Cats Poll', author: u1)

  q1 = Question.create!(question: 'What Cat Is Cutest?', poll: p1)
  ac1 = AnswerChoice.create!(answer_choice: 'Markov', question: q1)
  ac2 = AnswerChoice.create!(answer_choice: 'Curie', question: q1)
  ac3 = AnswerChoice.create!(answer_choice: 'Sally', question: q1)

  q2 = Question.create!(question: 'Which Toy Is Most Fun?', poll: p1)
  ac4 = AnswerChoice.create!(answer_choice: 'String', question: q2)
  ac5 = AnswerChoice.create!(answer_choice: 'Ball', question: q2)
  ac6 = AnswerChoice.create!(answer_choice: 'Bird', question: q2)

  r1 = Response.create!(
    respondent: u2,
    answer_choice: ac3
  )
  r2 = Response.create!(
    respondent: u2,
    answer_choice: ac4
  )
  
  r3 = Response.create!(
    respondent: u1,
    answer_choice: ac2
  )
