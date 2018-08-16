require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name]
    "#{@reversed.reverse}"
  end

  get '/square/:number' do
    @sq = params[:number]
      (@sq.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @i = 0
    while @i < @num do
      print @phrase.to_s
      @i +=1
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end

  get '/:operation/:number1/:number2' do

  end


end
