$database = []
$programInput2 = 100
$inputVar

def add #Defines Database Add Method (Option 1 from main menu)
	puts "To add words to your database"
	puts "type one word at a time and press enter to save it"
	puts "type !exit at any time to return to the main menu."

	while $inputVar != '!exit'
	$inputVar = gets.chomp
		if $inputVar != '!exit'
			$database.push $inputVar 
		else
			mainmenu
		end
	end
end



def remove #Defines Data Remove Method (Option 2 from main menu)
	puts "To remove words from your database"
	puts "type one word at a time and press enter to save it"
	puts "type !exit at any time to return to the main menu."

	while $inputVar != '!exit'
	$inputVar = gets.chomp
		if $inputVar != '!exit'
			$database.delete $inputVar 
		else
			mainmenu
		end
	end
end

def mainmenu
$inputVar = ''
	puts
	puts
	puts "Welcome to your word database!"
	puts "Please select from the following options:"
	puts
	puts "1. Add words to the database"
	puts "2. Remove words from the database"
	puts "3. Output all words currently stored"
	puts "4. Wipe database"
	puts "5. Exit program"
	puts
	
	while $programInput2 != 0
		programInput = gets.chomp.to_i
		if programInput == 1
			add
		elsif programInput == 2
			remove
		elsif programInput == 3
			puts "Here are the words you have stored so far:"
			puts $database.sort
			mainmenu
		elsif programInput == 4
			puts "Are you sure you want to wipe your database?"
			puts "All data will be removed. Y/N"
			warning = ''
			while (warning != "Y" or warning != "N")
				warning = gets.chomp.upcase
				if warning == "Y"
					puts "Database has been wiped"
					sleep 3
					$database = []
					mainmenu
				elsif warning == "N"
					puts "Returning to main menu..."
					sleep 3
					mainmenu
				else
					puts "Please type Y or N"
				end
			end
		elsif programInput == 5
			puts "Goodbye"
			$programInput2 = 0
		else
			puts "You did not select a valid option."
			puts "Please try again:"
			puts
		end
	end		
end

mainmenu