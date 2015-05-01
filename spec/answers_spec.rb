require 'spec_helper'

describe Answers do 
  describe '#answer_me' do 
    it 'sum two numbers' do 
      question = 'plus 2 2'
      expect(described_class.answer_me(question)).to eql 4
    end

    it 'multiply numbers' do 
      question = 'multiplied 2 3'
      expect(described_class.answer_me(question)).to eql 6
    end

    it 'largest number' do 
      question = 'largest 2 3'
      expect(described_class.answer_me(question)).to eql 3
    end

    it 'Peseta number' do 
      question = 'spain'
      expect(described_class.answer_me(question)).to eql 'Peseta'
    end

    it 'Banana color' do 
      question = 'banana' 
      expect(described_class.answer_me(question)).to eql 'yellow'
    end

    it 'Eiffel' do 
      question = 'Eiffel' 
      expect(described_class.answer_me(question)).to eql 'Paris'
    end

    it 'return the Fibonacci position in the sequence' do
      question = '7nd Fibonacci'
      expect(described_class.answer_me(question)).to eql 8
    end

    it 'power of a number' do 
      question = '4 power 2'
      expect(described_class.answer_me(question)).to eql 16
    end
  end
end
