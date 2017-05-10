#Ruby Variables
puts"            "
puts"            "
puts"╔╦╗╦╔═╗  ┌─┐"
puts" ║ ║╠═╝   ┌┘"
puts" ╩ ╩╩     o "
puts"            "
puts "🤑 What is the bill?"
print "$:"
bill_input=gets.chomp.to_f

puts"            "
puts "💰 What % tip do you want to give? (i.e. 20%)"
tip_percent=(gets.chomp.to_f/100)
puts"            "
puts "👫 How many people?"
people=gets.chomp.to_f


puts"_______________"
puts"---------------"
puts"              "

#Defined Method Below
#(Remember variables within method are separate)
# def name_of_method(parameter1, parameter2) the variables you
	#define here are the names you will use within the method
	#within method you cannot call a variable from outside the method
	#Between def---end
def calculateTip(bill,tip_per,share)
	tip_value = bill*tip_per
	total=tip_value +bill
	share_per_person=total/share

	return [total,tip_value, share_per_person]
end

#Calling The Method and putting in new variables for readibility later
tip_itself = '%.2f' % (calculateTip(bill_input, tip_percent, people)[1])
total_bill ='%.2f' % calculateTip(bill_input, tip_percent, people)[0]
total_per_person = '%.2f' % calculateTip(bill_input, tip_percent, people)[2]


#puts <<END lets you put stuff out with any spacing, indenting, etc END
 puts <<END

🤑 Your bill before the tip was: $#{ '%.2f' % bill_input}
💰 The tip itself is: $#{tip_itself}
💸 The total bill plus tip is: $#{total_bill}
👫 The cost per person is: $#{total_per_person}

END
