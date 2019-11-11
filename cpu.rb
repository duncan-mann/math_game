require "./players.rb"
require "./questions.rb"


class CPU 
    attr_accessor :current_player
    
    def initialize()
        @P1 = Player.new('P1')
        @P2 = Player.new('P2')
        @current_player = @P1
    end

    def set_current_player
        if @current_player == @P1
        @current_player = @P2
        else 
        @current_player = @P1
        end
    end

    def ask_question
        question = Question.new();
        question.q
        player_answer = gets.chomp.to_i

        if player_answer == question.a 
            puts "Correct Answer!"
        else 
            @current_player.deduct_point
            puts "Wrong answer! "
        end
        puts "P1: #{@P1.score}/3 vs. P2: #{@P2.score}/3"
        puts "----NEW TURN----"
    end


end


game = CPU.new()
puts "Player 1:" 
game.ask_question
game.set_current_player
game.ask_question



