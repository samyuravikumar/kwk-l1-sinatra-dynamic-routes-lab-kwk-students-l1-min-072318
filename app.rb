require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name = @name.reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    @number = @number * @number
    return @number.to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number2 = 0
    @fullphrase = ''
    
    until @number2 == @number
      @fullphrase = @fullphrase + @phrase
      @number2 += 1
    end
    return @fullphrase
  end
    
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = ''
    @string = @string + params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
    return @string
  end 
  
  get '/:operation/:number1/:number2' do
    case params[:operation].to_s
    when 'add'
      @number = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      @number = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      @number = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      @number = params[:number1].to_i / params[:number2].to_i
    else 
      @number = 0
    end
    return @number.to_s
  end
  
end