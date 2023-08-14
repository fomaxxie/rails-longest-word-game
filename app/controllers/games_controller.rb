class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { Array('A'..'Z').to_a.sample }
  end

  def score
    if params[:letters].chars.any? {|x| params[:play].chars.include?(x)}
      @result = "yey"
    else
      @result = "nope"
    end
  end
  @result
end
