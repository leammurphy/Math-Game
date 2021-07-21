

class Question 
  attr_accessor :num1, :num2, :ans

  def initialize()
    @num1 = rand 20
    @num2 = rand 20
    @ans = @num1 + @num2
  end

  def ask_question(player_name)

    puts "#{player_name}, what is #{@num1} + #{@num2}?"
    @ans
    
  end
  
end



