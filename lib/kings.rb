class Assigner

    def format_input names

        if names.include?(" ")
            names = names.gsub(" ","")
        end

        @names_Array = []
        @numbers_Array = []
        temp_var = ""
        x = 1
        names.each_char do |letter|
            if letter == ","
                @names_Array << temp_var
                @numbers_Array << x
                x = x + 1
                temp_var = ""
            else
                temp_var << letter
            end
        end
        @names_Array << temp_var
        @numbers_Array << "King!!!!"

    end
    
    def randomize

        @numbers_Array = @numbers_Array.shuffle

        @new_Array = []

        (0...@numbers_Array.length).each do |i|
            @new_Array << [@names_Array[i], @numbers_Array[i]]
        end

    end


    def print_King
        i = 0
        (0...@new_Array.length).each do |x|
            if @new_Array[x][1] == "King!!!!"
                print @new_Array[x][0] + " is " + @new_Array[x][1]
                i = x
                puts
            end
        end
        @new_Array.delete_at(i)
    end

    def print_Peons
        (0...@new_Array.length).each do |x|
            print @new_Array[x][0] + ": " + @new_Array[x][1].to_s
            puts
        end
    end
end