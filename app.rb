#!/usr/bin/env ruby

require 'bundler/setup'
require 'sinatra/base'
require 'slim'

class MyApp < Sinatra::Base
  disable :sessions

  configure :production do
    set :slim, pretty: false, sort_attrs: false
  end

  configure :development do
    set :slim, pretty: true, sort_attrs: true
  end
end

require_relative 'helpers/init'
require_relative 'routes/init'
