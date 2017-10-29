class Problem
  # Declarations
  BATTLE_DAYS = 3

  #For input
  def input
    puts "Battle of Mesoketes"
    BATTLE_DAYS.times do |day|
      puts "Type 'exit' for EXIT"
      puts "Enter input - Day #{day+1}"
      input = gets.chomp.strip
      break if input == 'exit'
      HelperMethods.new.parse_input(input)
      puts ""
    end
  end

#Function call
problem = Problem.new
problem.input
end