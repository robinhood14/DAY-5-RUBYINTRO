=begin Convert an input string into an integer array
 The chars method splits the string into an array of characters and it returns an enumerator.
 As a result we can call map on the array.
 The return value of map is another array with the transformed elements 

To see the output of text_to_ascii uncomment print function
Print text_to_ascii
Add the number of rotations 
Turn the numbers back to letters, and join

Returns a string created by converting each element of the array to a string, separated by sep.[ "a", "b", "c" ].join    #=> "abc" [ "a", "b", "c" ].join("-")  #=> "a-b-c" #
=end 



def chiffre_de_cesar(text, number)

text_to_ascii = text.chars.map(&:ord)
shifted = text_to_ascii.map { |a| a + number}
rotated_string = shifted.map { |a| a.chr }.join

 puts rotated_string 
end

chiffre_de_cesar("test", 3)

