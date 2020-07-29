# this problem was meant to have the least amount of characters in the code.
n=gets.to_i;n.times do;puts gets.to_i.to_s(2).split('').count{|a|a=='1'}end