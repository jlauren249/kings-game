require "./lib/kings.rb"

keepPlaying = true
while keepPlaying == true

    puts "Please enter names seperated by ','"
    names = gets.chomp

    system('cls')

    test = Assigner.new

    test.format_input names

    keepNames = true
    while keepNames == true

        test.randomize

        puts "Press enter to see the King!"
        continue = gets

        system('cls')
        test.print_King

        puts " "
        puts "Press enter to see the losers!"
        continue = gets

        test.print_Peons
        puts ""
        
        puts "Would you like to (c)ontinue with current names, (e)nter new names, or (q)uit?"
        response = gets.chomp.downcase
        puts ""
        
        if response == "e"
            keepNames = false
        elsif response == "q"
            keepNames = false
            keepPlaying = false
        end

        system('cls')
    end
end
