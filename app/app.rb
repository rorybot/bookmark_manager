ENV["RACK_ENV"] ||= "_development"

require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'/links/new'
  end

  post '/links' do
    Link.create(url: params[:url_address], title: params[:link_name])
    redirect '/links'
  end

  # get '/link_saver' do
  #       p params
  #       sessions[:name1] = [:player1hitpoints])
  #       sessions[:url] = params[:player2hitpoints])
  #
  #       redirect '/play'
  #     end
  #
  # end

  run! if app_file == $0

end
