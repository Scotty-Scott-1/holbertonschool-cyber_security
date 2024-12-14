#!/usr/bin/env ruby
# frozen_string_literal: true

# A ceasercipher class with methods to encrypt and decrypt
class CaesarCipher
  attr_reader :shift

  def initialize(shift)
    @shift = shift
  end

  def encrypt(message)
    instance_shift = shift
    caps = ('A'..'Z').to_a
    lower = ('a'..'z').to_a
    new_string = ''

    message.chars.each do |char|
      if char.ord >= 65 && char.ord <= 90
        new_index_of_letter = caps.index(char) + instance_shift % 26
        new_letter = caps[new_index_of_letter]
        new_string += new_letter
      elsif char.ord >= 97 && char.ord <= 122
        new_index_of_letter = lower.index(char) + instance_shift % 26
        new_letter = lower[new_index_of_letter]
        new_string += new_letter
      else
        new_string += char
      end
    end

    return new_string
  end

  def decrypt(message)
    instance_shift = shift
    caps = ('A'..'Z').to_a
    lower = ('a'..'z').to_a
    new_string = ''

    message.chars.each do |char|
      if char.ord >= 65 && char.ord <= 90
        new_index_of_letter = caps.index(char) - instance_shift % 26
        new_letter = caps[new_index_of_letter]
        new_string += new_letter

      elsif char.ord >= 97 && char.ord <= 122
        new_index_of_letter = lower.index(char) - instance_shift % 26
        new_letter = lower[new_index_of_letter]
        new_string += new_letter
      else
        new_string += char
      end
    end

    return new_string
  end
end
