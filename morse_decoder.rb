@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_letter(letter)
  @dictionary[letter]
end

def decode_word(word)
  @letters = word.split
  @current_word = ''
  @letters.each do |letter|
    @current_word += decode_letter(letter)
  end
  print "#{@current_word} "
end

def decode_message(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_word(word)
  end
end

decode_message('.... . .-.. .-.. ---')
