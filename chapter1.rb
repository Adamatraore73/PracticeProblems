#1.1 
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

#1.2
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

#1.3 Remove duplicate chars   
def removeDuplicate(str)
    if(str.length < 2)
        return str
    end

    for i in 0...str.length # not including str.length
        for j in (i+1)...str.length
            if(str[i] == str[j])
                str = str[0..(j-1)] + str[(j+1), str.length]
            end
        end     
    end
    str
end

#1.4 Methode to decide if two strings are anagrams or not.
def anagrams(str1 , str2) 
    if (str1.length != str2.length)
        return false
    end
    str1 = str1.chars.sort.join
    str2 = str2.chars.sort.join
    if str1 == str2
        return true
    end
    return false
end


#1.5 Write a method to replace all spaces in a string with ‘%20’.
def replaceSpaces(str) 
    if(str.include? " ")
        str = str.gsub!(" ", "%20")
    end
end

#1.8



#puts replaceSpaces(" fgh ")
#puts anagrams("iceman", "cinema")
#puts removeDuplicate("hello")
#hasAllUniqueChars("123451")
#reverseString("Adama")
#puts reverseString2("Adama")