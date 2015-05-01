module Answers
  def self.answer_me(question)
    ANSWERS.map { |ans| ans.new(question) }.map(&:perform).compact.first
  end

  class Sum < Struct.new(:question)
    def perform
      if question =~ /plus/
        digits.inject(:+)
      end
    end

    def digits
      question.scan(/\d+/).map(&:to_i)
    end
  end

  class Multiply < Struct.new(:question)
    def perform
      if question =~ /multiplied/
        digits.inject(:*)
      end
    end

    def digits
      question.scan(/\d+/).map(&:to_i)
    end
  end

  class Largest < Struct.new(:question)
    def perform
      if question =~ /largest/
        digits.max
      end
    end

    def digits
      question.scan(/\d+/).map(&:to_i)
    end
  end

  class Peseta < Struct.new(:question) 
    def perform 
      if question =~ /spain/i
        'Peseta'
      end
    end
  end

  class BananaColor < Struct.new(:question) 
    def perform 
      if question =~ /banana/
        'yellow'
      end
    end
  end

  class Eiffel < Struct.new(:question) 
    def perform 
      if question =~ /eiffel/i
        'Paris'
      end
    end
  end

  class Fibonacci < Struct.new(:question) 
    def perform 
      if question =~ /fibonacci/i
        f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
        f[position-1]
      end
    end
    
    def position
      question.scan(/\d+/).map(&:to_i).first
    end
  end

  class Power < Struct.new(:question)
    def perform 
      if question =~ /power/
        digits[0]**digits[1]
      end
    end

    def digits
      question.scan(/\d+/).map(&:to_i)
    end
  end

  ANSWERS = [
    Sum,
    Multiply,
    Largest,
    Peseta,
    BananaColor,
    Eiffel,
    Fibonacci,
    Power
  ]
end
