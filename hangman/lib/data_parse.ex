defmodule Hangman.Lib.Dataparser do

	@names_filepath "/home/_code_monk_/starter/lib/hangman/data/names.txt"
	
	def parse_data do
		data_rows = File.read!(@names_filepath ) |> String.split("\n")

		
		#IO.inspect data_rows 
	

		
	end
end
Hangman.Lib.Dataparser.parse_data