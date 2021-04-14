code aFunProgram
	
	/* Name: Colton Hagan
	   Class: CS 447
	   Program: Mirrors input, stopping when q
		    is inputed as first char of a line */

	function main ()
		var 
			ch: char = '\0'
			letters: int = 0
		while ch != 'q' || letters > 1
			ch = GetCh()
			printChar(ch)
			if ch != '\n'
				letters = letters + 1
			else
				letters = 0
			endIf
		endWhile
	endFunction

endCode
