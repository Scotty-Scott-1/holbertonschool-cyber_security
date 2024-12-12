# !/usr/bin/env ruby
# frozen_string_literal: true

# a HelloWorld class that prints Hello World
class HelloWorld
  attr_reader :message

  def initialize
    @message = 'Hello, World!'
  end

  def print_hello
    puts message
  end
end
