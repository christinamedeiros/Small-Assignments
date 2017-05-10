puts "How much is the bill?"
bill = gets.chomp.to_f
puts "The bill is $#{bill}"

  tip_input= bill * 0.20
total = bill + tip_input


puts "The total is $#{'%.2f'% total}"
