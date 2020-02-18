require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(8) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word].upcase
    @letters = params[:letters].split
    # raise

    if (@word.chars - @letters).length != 0
      @score = "Sorry, but #{@word.upcase} cant be built out of #{@letters}"
    else
      @score = "YAY!"
    end
  end
end

# The word can't be built out of the original grid
# The word is valid according to the grid, but is not a valid English word (API)
# The word is valid according to the grid and is an English word

# https://wagon-dictionary.herokuapp.com/:word
