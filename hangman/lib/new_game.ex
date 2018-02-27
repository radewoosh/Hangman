defmodule Hangman.Lib.Newgame do

	alias Hangman.Lib.Dataparser

	def new_game do
		data = Dataparser.parse_data 
		|> Enum.random
		data
	end
end

Hangman.Lib.Newgame