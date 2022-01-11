#import classes from quiz master directory
require_relative '../models/question'

# define question controller class to make functions
class QuestionController

    @questions = Array.new
    @question = Question.new()

    #list method to show questions
    def self.list()
        begin
            puts "No | Question | Answer"
            
            for q in @questions
                puts q.getID.to_s + " " + q.getPrompt + " " + q.getAnswer
            end
        rescue Exception => e
            puts "Something Wrong: " + e.message
        end
    end

    #detail method to show question detail
    def self.detail(id=0)
        begin
            question = @questions.find { |q| q.getID == id }

            # check if question detail found or not
            if defined?(question.getPrompt) == nil
                puts "No Question found"
            else
                puts "Q: " + question.getPrompt
                puts "A: " + question.getAnswer
            end
        rescue Exception => e
            puts "Something Wrong: " + e.message
        end
    end

    #create method to create question per item
    def self.create()
        begin
            # make user input for question and answer
            puts "No"
            no = gets.chomp

            puts "Question:"
            prompt = gets.chomp

            puts "Answer:"
            answer = gets.chomp

            question = @questions.find { |q| q.getID == id }

            # check if question already exists
            if defined?(question.getPrompt) == nil
                @questions.push(Question.new(no, prompt, answer))

                puts "Question no " + no + " created"
                puts "Q: " + prompt
                puts "A: " + answer
            else
                puts "Question no " + no + " already existed"
            end
        rescue Exception => e
            puts "Something Wrong: " + e.message
        end
    end

    #update method to update question by deleting item object by id
    def self.update()
        begin
            # make user input for question and answer
            puts "No"
            no = gets.chomp

            puts "Question:"
            question = gets.chomp

            puts "Answer:"
            answer = gets.chomp
            
            question = @questions.reject! { |q| q.getID == no } or nil

            # check if question detail found or not
            if question == nil
                puts "No Question found"
            else
                @questions.push(Question.new(no, prompt, answer))

                puts "Question " + no + " was updated"
            end
        rescue Exception => e
            puts "Something Wrong: " + e.message
        end
    end

    #delete method to delete question per item by id
    def self.delete
        begin
            # make user input for question and answer
            puts "No"
            no = gets.chomp

            question = @questions.reject! { |q| q.getID == no } or nil

            # check if question detail found or not
            if question == nil
                puts "No Question found"
            else
                puts "Question " + no + " was deleted"
            end
        rescue Exception => e
            puts "Something Wrong: " + e.message
        end
    end

    #answer method to show correct or wrong question
    def self.answer(id=0, answer="")
        begin
            question = @questions.find { |q| q.getID == id }

            # check if question detail found or not, if found shows answer correct or incorrect
            if defined?(question.getPrompt) == nil
                puts "No Question found"
            else
                puts question.getAnswer == answer ? "Correct" : "Incorrect"
            end
        rescue Exception => e
            puts "Something Wrong: " + e.message
        end
    end
end
