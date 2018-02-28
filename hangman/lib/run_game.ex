defmodule Hangman.Lib.Rungame do
	


	def start do
	string = Hangman.Lib.Newgame.new_game
	len = String.length( string )
	chances = 7
	position = 0 
	IO.puts "string is of length #{len}"
	string = String.graphemes( string )
	input_elem = []
	make_guess( string , chances , input_elem , position )      

    end

    def make_guess( string , chances , input_elem , position ) when chances > 1 do
    	
		
		IO.puts "entered words till now"
		IO.inspect input_elem

		input_char = IO.gets(" make your guess ")
		             |> String.trim("\n")


		input_elem = input_elem ++ [input_char]
		             |> Enum.uniq

		
		print_curr_result( string , input_char , input_elem) 

		if Enum.count( string , fn x -> x == input_char end) == 0 do
			chances = chances - 1
			position = position + 1

			IO.puts "wrong guess !!!"
			IO.puts Hangman.Lib.Print.print(  position ) 
			make_guess( string , chances , input_elem , position)

		else 

		IO.puts Hangman.Lib.Print.print(  position )

		if Enum.all?( string , fn x -> Enum.member?( input_elem , x ) == true end) do
			IO.puts " you won the game "
		else
		make_guess( string , chances , input_elem , position)
	    end
	end
    end

    def make_guess( string , chances , input_elem , position ) when chances == 1 do
    	
		IO.puts "entered words till now"
		IO.inspect input_elem

        input_char = IO.gets("  make your guess ")
		             |> String.trim("\n")


		input_elem = input_elem ++ [input_char]
		             |> Enum.uniq

		if Enum.count( string , fn x -> x == input_char end) == 0 do
			IO.puts " game over .. you lose the game "
			IO.puts "answer is "
			IO.puts List.to_string( string )
			position = position + 1
			IO.puts Hangman.Lib.Print.print( position )
			Hangman.Lib.Rungame.start
		else

		 if Enum.all?( string , fn x -> Enum.member?( input_elem , x ) == true end) do
			IO.puts " you won the game "
			IO.puts Hangman.Lib.Print.print( position )
			Hangman.Lib.Rungame.start
		 else

		 print_curr_result( string , chances , input_elem )
		 make_guess( string , chances , input_elem , position )

		end
	  end

	  

    end

    def print_curr_result( string , char , input_elem ) do

    	
    	result = Enum.reduce( string , [] , fn(x,acc) -> if Enum.member?( input_elem , x ) == true do acc ++ String.codepoints(x) else  acc ++ String.codepoints("_")   end end)
    	IO.inspect result
    	           |> Enum.join(" ")

    	
    end
    
	


end

#Hangman.Lib.Rungame.start

