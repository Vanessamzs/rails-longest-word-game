#
class GamesController < ApplicationController
  def new
    @letters = params[:letters]
    @letters = ('a'..'z').to_a.sample(10)
  end

  def english_word?(word)
    response = URI.open("https://dictionary.lewagon.com/#{word}")
    JSON.parse(response.read)
    raise
  end

  def score
    @scores = params[:word].length.to_i
  end
end
