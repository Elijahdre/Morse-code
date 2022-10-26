ABC = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.freeze

MORSECODE = [
  '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
  '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
  '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
  '-.--', '--..'
].freeze

def decode_char(char)
  ABC[MORSECODE.find_index(char)]
end

def decode_word(word)
  separate = word.split
  full_word = []
  separate.each { |letter| full_word.append(decode_char(letter)) }
  full_word.join
end

def decode(sentence)
  separate = sentence.split('   ')
  full_sentence = []

  separate.each do |word|
    full_sentence.append(decode_word(word))
  end

  full_sentence.join(' ')
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
