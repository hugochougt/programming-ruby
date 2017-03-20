require './config/application'
# Rack's `run` means "call that object for each request"
run BestQuotes::Application.new
