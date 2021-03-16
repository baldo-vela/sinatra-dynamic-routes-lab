require_relative 'config/environment'

class App < Sinatra::Base
 
  get "/reversename/:name" do
    # App GET /reversename/:name sends a 200 status code 
    # App GET /reversename/:name renders the name backwards
    name = params[:name]
    name.reverse
  end

  
  get "/square/:number" do
    # App GET /square/:number sends a 200 status code
    # App GET /square/:number renders the square of the number
    # App GET /square/:number isn't hard-coded
    product = params[:number].to_f * params[:number].to_f
    "#{product}"
  end
  
  get "/say/:number/:phrase" do
    # App GET /say/:number/:phrase sends a 200 status code
    # App GET /say/:number/:phrase repeats the phrase n times
    # App GET /say/:number/:phrase isn't hard-coded
    "#{params[:phrase]}" * params[:number].to_i
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    # App GET /say/:word1/:word2/:word3/:word4/:word5 sends a 200 status code
    # App GET /say/:word1/:word2/:word3/:word4/:word5 concatenates the words and adds a period
    # App GET /say/:word1/:word2/:word3/:word4/:word5 isn't hard-coded
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i  
    case params[:operation]
      when "add"
        # App GET /:operation/:number1/:number2 adds two numbers together
        "#{number1 + number2}"
      when "subtract"
        # App GET /:operation/:number1/:number2 subtracts the second number from the first
        "#{number2 - number1}"
      when "multiply"
        # App GET /:operation/:number1/:number2 multiplies two numbers together
        "#{number1 * number2}"
      else
        # App GET /:operation/:number1/:number2 divides the first number by the second number
        "#{number1 / number2}"
      end
    end
end