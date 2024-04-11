require "sinatra"
require "sinatra/reloader"


get("/") do
  erb(:hiperlinks)
end


get("/rock") do
  
  possible_results = ["rock", "paper", "scissors"] 
  they_result = possible_results.sample

  @our_result = "We played rock!"
  @their_result = "They played #{they_result}!"

  if they_result == "rock"
    @final_result = "We tied!"
  elsif they_result == "paper"
    @final_result = "We lost!"
  elsif they_result == "scissors"
    @final_result = "We won!"
  end
  
  erb(:rock)
end


get("/paper") do
  
  possible_results = ["rock", "paper", "scissors"] 
  they_result = possible_results.sample

  @our_result = "We played paper!"
  @their_result = "They played #{they_result}!"

  if they_result == "rock"
    @final_result = "We won!"
  elsif they_result == "paper"
    @final_result = "We tied!"
  elsif they_result == "scissors"
    @final_result = "We lost!"
  end
  
  erb(:paper)
end

get("/scissors") do
  
  possible_results = ["rock", "paper", "scissors"] 
  they_result = possible_results.sample

  @our_result = "We played scissors!"
  @their_result = "They played #{they_result}!"

  if they_result == "rock"
    @final_result = "We lost!"
  elsif they_result == "paper"
    @final_result = "We won!"
  elsif they_result == "scissors"
    @final_result = "We tied!"
  end
  
  erb(:scissors)
end
