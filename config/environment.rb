#The environment file is where we'll be loading all of our app's dependencies, from gems to database connections.
require 'bundler'
Bundler.require
require_relative "../lib/magazine.rb"
require_relative "../lib/author.rb"
require_relative "../lib/article.rb"
