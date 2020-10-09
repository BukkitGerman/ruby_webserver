#!/usr/bin/env ruby

require "sinatra/base"




class Webpage < Sinatra::Base

	set :session, true


	set :title, settings.appname
	set :description, "A Webapplication with Dynamic Navigation bar."


end
