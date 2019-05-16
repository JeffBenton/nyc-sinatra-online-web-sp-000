class LandmarksController < ApplicationController
  
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end
  
  post '/landmarks/new' do
    binding.pry
  end
end
