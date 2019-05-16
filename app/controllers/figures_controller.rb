class FiguresController < ApplicationController
  
  get '/figures' do
    erb :'/figures/index'
  end
  
  get '/figures/new' do
    erb :'/figures/new'
  end
  
  post '/figures/new' do
    figure = Figure.create(params[:figure])
    
    figure.titles << Title.create(params[:title]) if !params[:title][:name].empty?
    
    figure.landmarks << Landmark.create(params[:landmark]) if !params[:landmark][:name].empty?
    
    redirect '/figures'
  end
  
  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end
  
  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :'/figures/edit'
  end
  
  post '/figures/:id/edit' do
    binding.pry
    figure = Figure.find(params[:id])
    figure.name = params[:figure][:name]
    figure.
    
    redirect "/figures/#{figure.id}"
  end
end
