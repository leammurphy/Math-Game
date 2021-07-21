require "./players.rb"
require "./question.rb"

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @round = 1
    @current_player = @player1
  end

  def current_score
    puts "The current score is #{@player1.name}: #{@player1.lives}/3 to #{@player2.name}: #{@player2.lives}/3"
  end

  def next_round
    @round += 1
  end
  
   
  def next_question()
    
    if (@current_player == @player1)
      self.current_score
      puts "-------- BEGIN ROUND #{@round} -------- "
      self.next_round
    end
    
    question = Question.new()
    q = question.ask_question(@current_player.name)
    self.assess_answer(q)

  end
  
  def assess_answer(ans)
    players_ans = gets.chomp.to_i

    if (players_ans != ans)
      puts "Wrong answer!"
      @current_player.lives -= 1  
    end

    if (players_ans == ans)
      puts "Correct!"
    end

    if (!self.check_for_win)
      self.next_question 
    end
  end

  def check_for_win
  
    if @current_player.lives == 0
      @winner = @current_player.name == @player1.name ? @player2.name : @player1.name
      puts "#{@winner} you WIN"
      return true
    end
    self.reassign_player
    return false

  end
  
  def reassign_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end 
  end

   
 
end

