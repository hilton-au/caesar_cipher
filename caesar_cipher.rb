$alph_nums = Hash[("a".."z").to_a.map.with_index{|alph, idx| [alph, idx]}]

def caesar_cipher(orig_text, shift_factor)
  letters = orig_text.split('')
  encrypt_word = letters.map do |letter|
    if letter =~ /[[:alpha:]]/
      new_number = $alph_nums[letter.downcase]+shift_factor
      while new_number > 25
        new_number -= 26
      end
      if letter.upcase == letter
        letter = $alph_nums.key(new_number).upcase
      else
        letter = $alph_nums.key(new_number)
      end
    else
      letter = letter 
    end
  end 
  return encrypt_word.join('')
  
end
