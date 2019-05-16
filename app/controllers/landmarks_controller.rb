class LandmarksController < ApplicationController
  
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end
  
  post '/landmarks/new' do
    landmark = Landmark.create(params[:landmark])
    redirect "/landmarks/#{landmark.id}"
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end
end
