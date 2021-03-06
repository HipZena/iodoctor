require "bundler/setup"
require 'sinatra'
require 'sinatra/config_file'
require './partials'
require 'haml'
require 'json'
require 'hashie'
require 'pony'

config_file 'iodoctor.yml'

configure :development do
  Pony.options = {
    :via => :smtp,
    :via_options => {
      :address => 'localhost',
      :port => '2525',
      :domain => 'iodoctor.net'
    }
  }
end

configure :production do
  Pony.options = {
    :via => :smtp,
    :via_options => {
      :address => 'smtp.sendgrid.net',
      :port => '587',
      :domain => 'iodoctor.net',
      :user_name => ENV['SENDGRID_USERNAME'],
      :password => ENV['SENDGRID_PASSWORD'],
      :authentication => :plain,
      :enable_starttls_auto => true
    }
  }
end



helpers Sinatra::Partials

get '/' do
	haml :start, :format => :html5
end

post '/' do
    @version = settings.version
    @show_bottom_bar = true
	 unless params[:file] &&
					(tmpfile = params[:file][:tempfile]) &&
					(name = params[:file][:filename])
					
		 if params[:load]
				return haml :start
		 end
		 
		 @result = Hash.new
		 @result["endpoints"] = Hash.new
		
		 return haml(:endpoints)
	 end

	 contents = tmpfile.read
	 
	 result = JSON(contents)	
	 @result = Hashie::Mash.new(result)

	 haml :endpoints
end

post '/email' do
  json = params[:json]
  body = "Thanks for using I/O Doctor. Your .json file is attached."
  
  Pony.mail(:to => params[:to_address],
            :from => "json@iodoctor.net",
            :subject => "I/O Doctor JSON Output",
            :body => "Thanks for using I/O Doctor. Your .json file is attached.",
            :attachments => {"iodoctor.json" => json})
end

post '/file' do 
	content_type 'application/json'
	attachment 'config.json'
	response.write params[:json]
end