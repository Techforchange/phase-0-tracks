
 #An encrypt method that advances every letter of a string
#one letter forward. So "abc" would become "bcd". 
#For now, you can assume lowercase input and output. 
#Any space character should remain a space character 
#-- no change made.

# define method

def encrypt(string)

# separate string into characters
# advance characters one letter forward

  count = 0 # initialize count
    
    while count < string.length # run loop while count is less than string length (print every character)
      if string[count] == " " # preserve space character
        count += 1
      else
        if string[count] == "z" # edge case conditional
          string[count] = "a"
        else
          string[count] = string[count].next! # select character by index #, advance, and reassign
        end
        count += 1 # add to count so next character in string is called through method
      end
    end

  # reassemble string with advanced characters

  return string

end

#A decrypt method that reverses the process above. 
#Note that Ruby doesn't have a built-in method for 
#going backward one letter. How can you find out 
#where a letter is in the alphabet, then access 
#the letter right before it? Hint: In the IRB 
#session above, you learned how to ask a string 
#for the index of a letter. "abcdefghijklmnopqrstuvwxyz" 
#counts as a string.

# define method

def decrypt(string)

  # build method to generate previous letter in alphabet

  def retreat(letter)

    alpha = "abcdefghijklmnopqrstuvwxyz"  #this method takes care of edge cases, but the code breaks if character is not in this string
    value = alpha.index(letter) - 1
    return alpha[value]
    
  end

# separate string into characters
# call retreat method on each character of string

  count = 0

  while count < string.length
    if string[count] == " "
      count += 1
    else
      string[count] = retreat(string[count])
      count += 1
    end
  end

# reassemble string with retreated characters

  return string

end

#p encrypt("abc")
#p encrypt("zed")
#p decrypt("bcd")
#p decrypt("afe")
#p decrypt(encrypt("swordfish")) #test should return string as is

#Asks a secret agent (the user) whether they would 
#like to decrypt or encrypt a password

puts "would you like to encrypt or decrypt a password?"
method = gets.chomp

#Asks them for the password

puts "please enter the password"
password = gets.chomp

#Conducts the requested operation, 
#prints the result to the screen, and exits

if method == "encrypt"
  p encrypt(password)
else
  p decrypt(password)
end