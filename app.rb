require 'rubygems'
require 'sinatra/base'
require 'haml'

class SinatraBootstrap < Sinatra::Base
  require './helpers/render_partial'

  get '/' do
    @stories = [
	      {:name => "slicing", :desc => "Conversion of mockups to HTML/CSS", :days  => 3},
              {:name =>	"integration", :desc =>"Integration of HTML/CSS templates in the application", :days =>3},
              {:name =>	"registration", :desc =>"User can register", :days =>2},
              {:name =>	"facebook", :desc =>"User can login usring Facebook Connect", :days => 2},
              {:name =>	"twitter", :desc =>"User can login using Twitter", :days => 2},
              {:name =>	"linkedin", :desc =>"Conversion of mockups to HTML/CSS ", :days =>2},
              {:name =>	"user", :desc =>"Admin can manage users  ", :days =>  2},
              {:name =>	"authorization", :desc =>"Different types of users have different accesses  ", :days =>3},
              {:name =>	"crud", :desc => "User can create, edit and destroy an object  ", :days => 1},
              {:name =>	"listing", :desc => "User can consult a list of objects", :days => 	1},
              {:name =>	"pagination", :desc => "User can consult a paginated list of objects", :days => 	1},
              {:name =>	"rating", :desc => "User can rate objects", :days => 	2},
              {:name =>	"search", :desc => "User can search in a list of objects", :days =>  	2},
              {:name =>	"fulltext_search", :desc => "User can search in a list of objects ", :days => 4},
              {:name =>	"multi_search", :desc => "User can search in a list of objects  ", :days =>  	5},
              {:name =>	"upload", :desc => "User can upload files  ", :days => 	3},
              {:name =>	"pdf", :desc => "User can download pages as PDF", :days =>  4},
              {:name =>	"aws", :desc => "Files and images are stored on AWS", :days =>2},
              {:name =>	"calendar", :desc => "User has access to a calendar (No recurring events)", :days => 	10},
              {:name =>	"inbox", :desc => "Users can exchange messages (No threading) ", :days => 	8},
              {:name =>	"activity", :desc => "Similar to Facebook wall", :days => 12},
              {:name =>	"favorite", :desc => "Similar to Facebook like", :days => 4},
              {:name =>	"comments", :desc => "User can comment on an objec ", :days => 4},
              {:name =>	"payment", :desc => "Only with one standard system", :days => 4},
              {:name =>	"invoice", :desc => "User can make and send invoices (no drafts)", :days =>  	5},
              {:name =>	"cms", :desc => "User can edit content  ", :days =>5},
              {:name =>	"notifications", :desc => "Setting up mandrill or sendgrid to send notifications on signup...etc", :days => 3},
              {:name =>	"custom_notifications", :desc => "Customized notifications on specific actions", :days => 5},
              {:name =>	"monitoring", :desc => "Setting up New Relic, Monit and God", :days => 4},
              {:name =>	"caching", :desc => "Controllers and whole views, no partial caching, no javascript included", :days => 3},
              {:name =>	"jobs", :desc => "Setting redis, setting sidekiq, run basic process in background", :days => 3},
              {:name =>	"backup", :desc => "Backup of the database", :days =>2},
              {:name =>	"maintenance", :desc => "Maintenance for the first month of production", :days =>2},
              {:name =>	"hosting", :desc => "Hosting for the first month of production", :days =>2} 
        ]

    haml :index
  end


  post '/estim' do
    @client_name = params[:client_name]
    puts @client_name
    @project_name = params[:project_name]
    puts @project_name
    @mission = params[:mission]
    puts @mission
    @rate = params[:rate]
    puts @rate

    @stories = [
	      {:name => "slicing", :desc => "Conversion of mockups to HTML/CSS", :days  => 3},
              {:name =>	"integration", :desc =>"Integration of HTML/CSS templates in the application", :days =>3},
              {:name =>	"registration", :desc =>"User can register", :days =>2},
              {:name =>	"facebook", :desc =>"User can login usring Facebook Connect", :days => 2},
              {:name =>	"twitter", :desc =>"User can login using Twitter", :days => 2},
              {:name =>	"linkedin", :desc =>"Conversion of mockups to HTML/CSS ", :days =>2},
              {:name =>	"user", :desc =>"Admin can manage users  ", :days =>  2},
              {:name =>	"authorization", :desc =>"Different types of users have different accesses  ", :days =>3},
              {:name =>	"crud", :desc => "User can create, edit and destroy an object  ", :days => 1},
              {:name =>	"listing", :desc => "User can consult a list of objects", :days => 	1},
              {:name =>	"pagination", :desc => "User can consult a paginated list of objects", :days => 	1},
              {:name =>	"rating", :desc => "User can rate objects", :days => 	2},
              {:name =>	"search", :desc => "User can search in a list of objects", :days =>  	2},
              {:name =>	"fulltext_search", :desc => "User can search in a list of objects ", :days => 4},
              {:name =>	"multi_search", :desc => "User can search in a list of objects  ", :days =>  	5},
              {:name =>	"upload", :desc => "User can upload files  ", :days => 	3},
              {:name =>	"pdf", :desc => "User can download pages as PDF", :days =>  4},
              {:name =>	"aws", :desc => "Files and images are stored on AWS", :days =>2},
              {:name =>	"calendar", :desc => "User has access to a calendar (No recurring events)", :days => 	10},
              {:name =>	"inbox", :desc => "Users can exchange messages (No threading) ", :days => 	8},
              {:name =>	"activity", :desc => "Similar to Facebook wall", :days => 12},
              {:name =>	"favorite", :desc => "Similar to Facebook like", :days => 4},
              {:name =>	"comments", :desc => "User can comment on an objec ", :days => 4},
              {:name =>	"payment", :desc => "Only with one standard system", :days => 4},
              {:name =>	"invoice", :desc => "User can make and send invoices (no drafts)", :days =>  	5},
              {:name =>	"cms", :desc => "User can edit content  ", :days =>5},
              {:name =>	"notifications", :desc => "Setting up mandrill or sendgrid to send notifications on signup...etc", :days => 3},
              {:name =>	"custom_notifications", :desc => "Customized notifications on specific actions", :days => 5},
              {:name =>	"monitoring", :desc => "Setting up New Relic, Monit and God", :days => 4},
              {:name =>	"caching", :desc => "Controllers and whole views, no partial caching, no javascript included", :days => 3},
              {:name =>	"jobs", :desc => "Setting redis, setting sidekiq, run basic process in background", :days => 3},
              {:name =>	"backup", :desc => "Backup of the database", :days =>2},
              {:name =>	"maintenance", :desc => "Maintenance for the first month of production", :days =>2},
              {:name =>	"hosting", :desc => "Hosting for the first month of production", :days =>2} 
        ]

    haml :estim

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
