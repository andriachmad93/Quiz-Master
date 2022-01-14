# define Help class to show command for quiz master
class Help

    #command method to show helps quiz master cli command
    def self.command
        puts "Command | Description"
        puts "create_question | Creates a question"
        puts "update_question | Updates a question"
        puts "delete_question | Deletes a question"
        puts "question | Shows a question"
        puts "questions | Shows question list"
        puts "answer_question | Answers a question"
    end
end
