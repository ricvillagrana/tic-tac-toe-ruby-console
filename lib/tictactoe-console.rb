class TictactoeConsole
    def show board
        # Create horizontal lines
        top_line = "═══╦"*board.size
        middle_line = "═══╬"*board.size
        bottom_line = "═══╩"*board.size

        # Delete last char
        top_line = top_line[0...-1]
        middle_line = middle_line[0...-1]
        bottom_line = bottom_line[0...-1]

        output =  "\n╔#{top_line}╗\n"
        board.each_with_index do |row, i|
            row.each do |cell| # Fills each cell of the board that each player has taken
                output += "║ "
                if cell == nil
                    output += "  "
                else
                    output += "#{cell[:symbol]} "
                end
            end
            output += "║\n"
            if i != board.length-1 # Print the horizontal line if is not the last row
                output += "╠#{middle_line}╣\n"
            end
        end
        output += "╚#{bottom_line}╝\n"
        puts output
    end

    def show_leaderboard players
        players.map {|player| puts "#{player[:name]}(#{player[:symbol]}) has won #{player[:wins]} times."}
    end
end