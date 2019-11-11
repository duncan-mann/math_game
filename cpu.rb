require "./players.rb"
require "./questions.rb"


class CPU 
    attr_accessor :current_player
    
    def initialize()
        @P1 = Player.new('Player 1')
        @P2 = Player.new('Player 2')
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

    def play()
        while @P1.score > 0 && @P2.score >0
            puts "#{current_player.name}:" 
            ask_question
            set_current_player
        end

        if @P1.score === 0
            winner = @P2
        else
            winner = @P1
        end

        puts "#{winner.name} wins with a score of #{winner.score}/3"
        puts "----GAME OVER----"
        puts "Goodbye!"


    end 




end


game = CPU.new()
game.play()

# puts "#{current_player.name}:" 
# game.ask_question
# game.set_current_player
# game.ask_question



