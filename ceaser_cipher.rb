# Pseudo code - caeser cipher 
# 1 Converts Strings to a set of number array using ascii code. 
# 2 Adds the right shift through addition after conversion. 
# 3 Ensure the alphabets are changed and their formating is kept the same. 
# 4 Ensure the alphabets are cycled once reach z. 

require "pry-byebug"

def convert_string_to_ascii (string) 
    # Output is an array of numbers
    string_to_array = string.split('').map {|element| element.ord} 
    return string_to_array 
end 

def convert_ascii_to_string (array)
    #Output is a string 

    array_to_string = array.map{|element| element.chr}.join('')

    return array_to_string
end

def add_right_shift (array,key)
    # takes in array adds key
    # checks if the array is alphabet then amends 
    right_shift_array = array.map do |element|

        if ensure_alphabet(element)
            element = alphabet_rotate(element,key)
        else
            element = element 
        end
    end
    return right_shift_array
end

def caeser_cipher(string,key) 
    string_to_convert = convert_string_to_ascii(string) 
    string_to_convert = add_right_shift(string_to_convert,key) 
    string_to_convert = convert_ascii_to_string(string_to_convert) 
    
    return string_to_convert 
end 

def ensure_alphabet (number)
    if number.between?(65,90) || number.between?(97,122)
        return true 
    else
        return false 
    end
end

def alphabet_rotate (number, key) 
    #provided it is an alphabet checks for overshoot and compensates for it
    if number.between?(65,90) && (number+key) > 90 
        number = 65 + (number + key - 91 )
    elsif number.between?(97,122) && (number+key) > 122
        number = 97 + (number+key - 123 )
    else
        number = number + key 
    end
    return number 
end 





puts caeser_cipher("What a string!", 5)

