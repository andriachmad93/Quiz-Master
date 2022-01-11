#import package from gemfile dependency
require 'tty-prompt'

#import classes from quiz master directory
require_relative 'help'
require_relative '../controllers/question'

# define Menu class to show quiz master menu
class Menu

    # begins printing display menu to choose :
    # helps command
    # creates question
    # updates question
    # deletes question
    # shows question or question detail
    # answers question
    # exit
    # show invalid command
    def self.display_menu
        user_input = TTY::Prompt.new.ask("Please input your command:")
        
        # check user input for menu validation
        case user_input
        when 'help'
            Help.command()
            display_menu()
        when 'create_question'
            QuestionController.create()
            display_menu()
        when 'update_question'
            QuestionController.update()
            display_menu()
        when 'delete_question'
            QuestionController.delete()
            display_menu()
        when 'questions'
            QuestionController.list()
            display_menu()
        when 'question'
            puts "No"
            no = gets.chomp

            QuestionController.detail(no)
            display_menu()
        when 'answer_question'
            QuestionController.answer()
            display_menu()
        when 'exit'
            system('clear')
            puts "You Quit from Quiz Master"
            system(exit)
        else
            puts "Invalid Command"
            display_menu()
        end
    end
end
