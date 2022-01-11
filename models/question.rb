# define question class to make getter and setter for id, prompt and answer
class Question

   # constructor method
   def initialize(id=0, prompt="", answer="")
      @id, @prompt, @answer = id, prompt, answer
   end

   # getter methods
   def getID
      @id
   end
   def getPrompt
      @prompt
   end
   def getAnswer
      @answer
   end

   # setter methods
   def setID=(value)
      @id = value
   end
   def setPrompt=(value)
      @prompt = value
   end
   def setAnswer=(value)
      @answer = value
   end
end
