defmodule Hangman.Lib.Print do
	
	def print( 0 ) do
    """
        =========
       |        
       |
       |
       |
       |
       |
    """

    end
 	def print( 1 ) do
		"""
        =========
       |         |
       |
       |
       |
       |
       |
    """
	end

	def print( 2 ) do
		"""
        =========
       |         |
       |         O
       |
       |
       |
       |
    """
	end

	def print( 3 ) do 
		"""
        =========
       |         |
       |         O
       |        /
       |
       |
       |
    """
	end
	def print( 4 ) do
		"""
        =========
       |         |
       |         O
       |        / \\
       |
       |
       |
    """
    end
	def print( 5 ) do
		"""
        =========
       |         |
       |         O
       |        / \\
       |         |
       |
       |
    """
	end
	def print( 6 ) do
		"""
        =========
       |         |
       |         O
       |        / \\
       |         |
       |        /
       |
    """
	end
	def print( 7 ) do
		"""
        =========
       |         |
       |         O
       |        / \\
       |         |
       |        / \\
       |
       
    """
	end

end

#IO.puts Hangman.Lib.Print.print(0)