require "./players.rb"
require "./question.rb"

  puts "What is your name?"
  name1 = gets.chomp.to_s
  player1 = Player.new(name1)
  # sleep(2)
  # puts "#{name1} has entered the arena!"
  # sleep(2)
  puts "Who dares challenge #{name1}?! (enter your name pls)"
  name2 = gets.chomp.to_s
  player2 = Player.new(name2)
  # sleep(2)
  # puts "#{name2} has entered the arena!"
  # sleep(2)
  # puts "Is everyone ready?"
  # sleep(2)
  # puts "はじめ!"
  puts "The question is..."
  question1 = Question.new()
  question1.ask_question
  question1.ans_assess
  # puts player1.inspect
  # puts player2.inspect



