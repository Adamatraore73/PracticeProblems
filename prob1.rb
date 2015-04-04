def hasAllUniqueChars(str)
	for i in 0...str.length #outter loop
		for j in i+1...str.length  #inner loop
			if(str[i] == str[j])
				puts "Repeated chars found"
				return false
			end
		end  		 
	end
	puts "String has ALL unique Chars"
	return true
end

def reverseString(str)
	#return str.reverse
	reserved_str = ""
	for i in 1...str.length+1
		reserved_str += str[str.length-i]
	end 
	puts reserved_str
end

def reverseString2(str)
	if (str.length == 0) #Base Case
		return str
	end
	return str[-1].to_s + reverseString2(str[0..-2])
end

hasAllUniqueChars("123451")
reverseString("Moulaye")
puts reverseString2("Adama")


