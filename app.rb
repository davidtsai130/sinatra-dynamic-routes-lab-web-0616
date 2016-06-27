require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse!
  end

  get "/square/:number" do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get "/say/:number/:phrase" do 
    # params[:number]to_i.times{params[:phrase]}
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      total = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      total = params[:number2].to_i - params[:number1].to_i
    elsif params[:operation] == "multiply"
      total = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      total =params[:number1].to_i / params[:number2].to_i
    end
    total.to_s
  end



end