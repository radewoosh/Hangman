defmodule Hangman.Lib.Rungametest do
  use ExUnit.Case
  alias Hangman.Lib.Rungame
  doctest Hangman
  
  
  
  test "run_game" do
  	Rungame.start
  	#IO.inspect name
  end

end