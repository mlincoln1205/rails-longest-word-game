class GamesController < ApplicationController

  def new
    @new_game = GamesController.new.without_numbers(10).split('')

  end

  def score
    raise
  end

 def without_numbers(length)
    random_string(length, alphabet)
  end


 private
  def random_string(length, charset)
    Array.new(length) { charset.sample }.join
  end

  def alphabet
    @alphabet ||= Array('A'..'Z')
  end
end
