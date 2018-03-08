class TestPrint

  def initialize
    current_path = File.dirname(__FILE__)
    file = File.open(current_path + "/../data/summery.txt")

    @summary = file.readlines
  end

  def result(answers)

    puts "Результаты теста:\n"
    case
      when answers <= 3
        puts @summary[12]
      when answers <= 8
        puts @summary[10]
      when answers <= 13
        puts @summary[8]
      when answers <= 18
        puts @summary[6]
      when answers <= 24
        puts @summary[4]
      when answers <= 29
        puts @summary[2]
      else
        puts @summary[0]
    end
  end
end