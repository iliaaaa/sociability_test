class TestClass
  attr_reader :answers

  def initialize
    @answers = 0
    @questions_counter = 0

    current_path = File.dirname(__FILE__)
    file = File.open(current_path + "/../data/questions.txt")
    @questions = file.readlines
  end

  def next_q
    for item in @questions do 
      user_input = nil
      puts item

      while (user_input != "0" && user_input != "1" && user_input != "2" )
        puts "Варианты ответов:\n 0 - нет\n 1 - иногда\n 2 - да\n"
        user_input = STDIN.gets.chomp
      end

      if user_input == "1"
       @answers += 1
       elsif user_input == "2"
        @answers += 2
      else
      end

      @questions_counter += 1
    end
  end

  def end?
    @questions_counter >= @questions.size
  end
end










