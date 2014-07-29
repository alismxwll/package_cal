require './lib/package_cal'

@packages = []

def main_menu
  loop do
    puts "Press 'a' to create a new package."
    puts "Press 'l' to list all packages."
    puts "Press 'x' to exit"
    main_choice = gets.chomp


    if main_choice == 'a'
      puts 'What is your packages name?'
      name = gets.chomp

      puts 'What is your packages height?'
      height = gets.chomp.to_i


      puts 'what is your packages width?'
      width = gets.chomp.to_i


      puts 'what is your packages length?'
      length = gets.chomp.to_i


      puts 'what is your packages weight?'
      weight = gets.chomp.to_i

      new_package = Package.new(height, width, length, weight, name)
      @packages << new_package

      puts "#{new_package.name} is your new package, with a volume of #{new_package.volume} it costs #{new_package.cost_to_ship} to ship"

    elsif main_choice == 'x'
      puts 'goodbye'
      exit
    else
      puts 'That is not valid'
    end
  end
end

main_menu
