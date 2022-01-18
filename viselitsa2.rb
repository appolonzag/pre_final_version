require_relative "play.rb"
require_relative "res.rb"

printer = Result_Printer.new

slovo = ARGV[0]


game = Game.new(slovo)


while game.status == 0 do

    printer.print_status(game)

    game.ask_next_letter
end

printer.print_status (game)