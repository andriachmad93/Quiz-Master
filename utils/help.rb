# define Help class to show command for quiz master
class Help

    #command method to show helps quiz master cli command
    def self.command
        puts "Command | Description"
        puts "create_question <no> <question> <answer> | Creates a question"
        puts "update_question <no> <question> <answer> | Updates a question"
        puts "delete_question <no> | Deletes a question"
        puts "question <no> | Shows a question"
        puts "questions | Shows question list"
        puts "answer_question <no> <answer> | Answers a question"
    end
end
