require "colorize"

def puts_git(cmd)
    puts `git #{cmd} -h`
    menu
end

def menu
    puts "MAIN MENU".colorize(:cyan)
    puts "1: Enter git command".colorize(:cyan)
    puts "2: Exit".colorize(:cyan)
    choice = gets.to_i
    case choice
    when 1
        puts "Enter git command".colorize(:green)
        puts_git(gets.strip)
        menu
    when 2
        puts "Thanks for using the program!".colorize(:green)
        sleep(3)
        print `clear`
        exit 
    else
        puts "Invalid choice. Try again".colorize(:red)
        menu
    end
end

menu