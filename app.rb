require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []
    @number.times {@phrase_array << @phrase} 
    "#{@phrase_array.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word_array = [@word1, @word2, @word3, @word4, @word5]
    "#{@word_array.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      @total = @num1 + @num2
    elsif @operation == "subtract"
      @total = @num1 - @num2
    elsif @operation == "multiply"
      @total = @num1 * @num2
    elsif @operation == "divide"
      @total = @num1 / @num2
    end
    "#{@total}"
  end

end