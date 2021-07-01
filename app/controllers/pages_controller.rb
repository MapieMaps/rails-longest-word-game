class PagesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }.join("")

  end
  def score
    @word = params[:word].upcase
    @display_letters = params[:letters]
    # binding.pry
    @scenarios = ""
    @scenario1 = "The word can’t be built out of the original grid"

    # if @word.count >= 10
    #   @scenarios = @scenarios << @scenario1
    #   puts "#{@scenarios}"
    # end
  end
end

# def included?(guess, grid)
#   guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) }
# en
