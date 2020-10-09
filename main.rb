#!/usr/bin/env ruby

require "tilt/erb"
require "sinatra/base"
require "./server/routes"

class Webpage < Sinatra::Base

	set :session, true
	set :appname, "Enter your Appname here!"
	set :title, settings.appname
	set :description, "A Webapplication with Dynamic Navigation bar."

	set :port, 1337

	set :javascripts, []
	set :stylesheets, ["style.css"]
	set :environment, :production
	set :root, File.dirname(__FILE__)
 	set :public_folder, File.dirname(__FILE__) + '/assets'




 	include AppRoutes
end
