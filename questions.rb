class Question
    attr_accessor :num1, :num2, :q, :a

    def initialize()
        @num1 = rand(20)
        @num2 = rand(20)
    end

    def q
      puts "What is #{num1} + #{num2}?"
    end

    def a
        num1+num2
    end
end

# q1 = Question.new()
# q1.q
# puts q1.a