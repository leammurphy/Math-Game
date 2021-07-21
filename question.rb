class Question 
  attr_accessor :num1, :num2, :ans

  def initialize()
    @num1 = rand 20
    @num2 = rand 20
    @ans = @num1 + @num2
  end

  def ask_question()
    puts "What is #{@num1} + #{@num2}?"
  end
  
  def ans_assess()
    players_ans = gets.chomp.to_i
    if (players_ans != @ans)
      puts "Wrong answer!"
    end
    if (players_ans == @ans)
      puts "Correct!"
    end
  end
end



