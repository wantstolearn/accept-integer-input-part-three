
def beers(beers, crackers)  #give it a name and state the variables it will use

prompt='>>>' #local variable to this method

	attempts_left = 6
	
		puts "How many beers do you have?",prompt
	
			until beers.is_a?(Integer) or attempts_left == 1  do
	  
			   attempts_left = attempts_left-1
			   		
			   		if attempts_left == 1 then 
			   			puts "(last chance to enter a number)"
			   		else
			   			puts"(You have #{attempts_left} remaining chances to enter a number)\n"
			   		end
			   
			   print "Please enter a number:",prompt
			   
			   beers = Integer(gets) rescue "zero"  
			
			end 	
		
	attempts_left = 6
	
		puts "How many packets of crackers do you have?",prompt
	
			until crackers.is_a?(Integer) or attempts_left == 1  do
		  
			   attempts_left = attempts_left-1
			   		
			   		if attempts_left == 1 then \
			   			puts "(last chance to enter a number)"
			   		else
			   			puts"(You have #{attempts_left} remaining chances to enter a number)\n"
			   		end
			   
			   print "Please enter a number:",prompt
			   
			   crackers = Integer(gets) rescue "no"  
			
			end 

	puts "Ok, you have #{beers} beers and #{crackers} crakcers"

end

#######start main program

prompt1 = " >>>"

print	 "Can I ask you some questions about beer and crackers?",prompt1 #print not puts here

allowed_input = ['yes', 'y', 'ok', 'yep', 'yeah','sure' ,'cool'] # commas are essentail.

answer  = gets.chomp
answer = answer.downcase

case answer
	
	when *allowed_input  then         #does not seem to work with if then else 
			puts "Thank you.\n"
			beers = nil  #you must initialise and you must use nil not an i
			crackers = nil
			beers beers, crackers #call the method
	else
			print "O.k. sorry for being nosey."

end
