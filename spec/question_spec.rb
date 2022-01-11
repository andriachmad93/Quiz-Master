#import package from gemfile dependency
require 'rspec'

#import classes from quiz master directory
require_relative '../models/question'

# Question class tests
RSpec.describe Question do
    it 'creates a question class' do
        q = Question.new
        expect(q).to be_kind_of(Question)
    end

    # Checkes whether a question class responds to the question message (has a question method)
    it 'question' do
        q = Question.new
        expect(q).to respond_to(:getID,:getQuestion,:getAnswer)
    end
end
