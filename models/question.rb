# define question class to make getter and setter for id, question and answer
class Question

   # constructor method
   def initialize(id=0, question="", answer="")
      @id, @question, @answer = id, question, answer
   end

   # getter methods
   def getID
      @id
   end
   def getQuestion
      @question
   end
   def getAnswer
      @answer
   end

   # setter methods
   def setID=(value)
      @id = value
   end
   def setQuestion=(value)
      @question = value
   end
   def setAnswer=(value)
      @answer = value
   end
end
