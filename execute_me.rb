#!/usr/bin/env ruby
# frozen_string_literal: true

require './lib/fizz_buzz_generator'

def run
  puts 'Type a number and hit enter to see the FizzBuzz numbers upto it'
  input = gets.chomp.to_i

  puts FizzBuzzGenerator.new.upto(input)
rescue ArgumentError
  puts 'Oops something went wrong! Input a number greater than zero!'
  run
end

puts 'Welcome to FizzBuzz'
run
