require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
# binding.pry
    (@num**2).to_s
  end

  get '/say/:number/:phrase' do
    @phrase = String.new

    params[:number].to_i.times do
      @phrase = "#{@phrase} " + params[:phrase]
    end

    @phrase
  end
  # binding.pry
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{:word1} " + "#{:word2} " + "#{:word3} " + "#{:word4} " + "#{:word5}."
  end

end
