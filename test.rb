get("/rock") do
  
  possible_results = ["rock", "paper", "scissors"] 
  they_result = possible_results.sample

  "We played rock!"
  "They played #{they_result}!"

  if they_result == "rock"
    "We tied!"
  elsif they_result == "paper"
    "We lost!"
  elsif they_result == "scissors"
    "We won!"
  end

end
