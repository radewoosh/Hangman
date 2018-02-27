defmodule Genserver_initialization do
	use GenServer 

	def start_link do
		GenServer.start_link(__MODULE__, [] , name: :starting)
	end
	def start_cast() do
		GenServer.cast(:starting , {:match})
	end
	def handle_cast({:match},state) do
		Hangman.Lib.Rungame.start
		{:noreply , state}
	end
end