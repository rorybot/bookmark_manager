ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'database_setup'

class BookmarkManager < Sinatra::Base

 enable :sessions
 set :session_secret, 'super secret'

 helpers do
   def current_user
     @current_user ||= User.get(session[:user_id])
   end
 end

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

    Tag.new.input_tags(link, tags_array)

    link.save
    redirect to('/links')
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

  get '/signup' do
    erb :'sign_up/enter_details'
  end

  post '/signup_new' do
    user = User.create(email_address: params[:email_address],
              password: params[:password])
    session[:user_id] = user.id
    session[:pasword] = user.password_digest
        redirect to('/links')
  end

  run! if app_file == $0

end
