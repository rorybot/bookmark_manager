ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'database_setup'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'/links/new'
  end

  post '/links' do
    link = Link.new(url: params[:url_address],
                title: params[:link_name])
    tags_array = params[:tags]

    Tag.new.input_tags(link,tags_array)

          link.save
    redirect to('/links')
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

  run! if app_file == $0

end
