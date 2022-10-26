# frozen_string_literal: true

ABC = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

MORSECODE = [
  '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',
  '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.',
  '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-',
  '-.--', '--..'
].freeze

def decode_char(char)
  ABC[MORSECODE.find_index(char)]
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
