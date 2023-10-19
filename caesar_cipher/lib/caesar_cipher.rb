def caesar_cipher(string, shift_factor)
  char_code_arr = string.bytes.map do |char_code|
    #To check the ascii value range and keep the shifting to only letters of the alphabet
    if (char_code >= 65 && char_code <= 90) || (char_code >= 97 &&char_code <= 122)
      char_code += shift_factor
    end

    #To enforce wrapping when at the end of the alphabet
    if (char_code > 122) || (char_code < 97 && char_code > 90)
      char_code -= 26
    end

    #To change ascii integers to characters
    char_code.chr
  end

  p ciphered_string = char_code_arr.join
  return ciphered_string
end
