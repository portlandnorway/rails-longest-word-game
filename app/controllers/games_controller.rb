class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    raise
    @user_answer = params[:word].upcase.split('')
    @test_array = []
    @user_answer.each do |letter|
      if @letters.include?(letter)
        @test_array << letter
      else
        @test_array << 'you lose'
        # "hello"
        # another note
      end
    end
  end
end


    # The word can’t be built out of the original grid
    # The word is valid according to the grid, but is not a valid English word
    # The word is valid according to the grid and is an English word
