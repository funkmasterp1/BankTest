#Your info
define = ["Account Number ", "pin ", "balance "]
#Build array with above information
account1 = [1010, 123, 1392]
account2 = [1011, 124, 40]


puts 'Welcome to Telleroo'
puts 'Im Paul, your bank teller.'

loop do
	
	puts 'Enter 1 for existing account'
	puts 'Enter 2 to create a new account'
	
	response = gets.chomp.to_i
		
	if response == 1	
		
		puts 'Please enter your secret PIN'
		
		#User enters pin
		pinEnter = gets.to_i
		
		if pinEnter == account1[1]
			puts 'Let me check that balance for you...'
			puts define[0] + account1[0].to_s
			puts define[2] + account1[2].to_s
				puts 'Would you like to make a transfer (y/n)'
				  yn = gets.chomp.to_s
				    if yn == 'y'
				    	print 'Please enter receving account number (1011 perhaps)'
				    	toA = gets.chomp.to_i
				    	if toA = account2[0]
				    		puts 'good pick'
				    		puts 'How much money would you like to transfer'
				    		amount = gets.chomp.to_i
				    			if amount <= account1[2]
				    				puts 'You have enough money'
				    				account1[2] = account1[2] - amount
				    				account2[2] = account2[2] + amount
				    				puts 'The ' + account1[0].to_s + ' account now has £' + account1[2].to_s
				    				puts 'The ' + account2[0].to_s + ' account now has £' + account2[2].to_s
				    				puts 'Your transfer of £' + amount.to_s + ' is now compete.'
				    			else
				    				puts 'not enough money'
				    			end
				    	else
				    		puts 'too bad'
				    	end
				    else
				    	puts 'whatever'
				    end
		else puts 'Access Denied'
		end
	
	elsif response == 2
		puts 'New ACCOUNT'
		#build new array of 3 columns
		NewAccount = Array.new(3)
		#define new account number
		NewAccount[0] = (account2[0]+1)
		
		#User set pin
		puts 'Please set your pin number...'
		newpin = gets.chomp.to_i
		NewAccount[1] = newpin
		
		#Start with zero balance
		NewAccount[2] = 0
		
		puts 'Here are your details'
		puts 'The ' + NewAccount[0].to_s + ' account now has £' + NewAccount[2].to_s + ' and your pin is confirmed as ' + NewAccount[1].to_s
		
		
		
		
		
		puts NewAccount
	else
		puts 'A terrible terrible error has occured'
	end
end