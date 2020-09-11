require 'bundler/setup'
Bundler.require

require 'open-uri'
require 'net/http'
require 'openssl'
require 'json'

require_relative '../lib/cli.rb'
require_relative '../lib/adapter.rb'
require_relative '../lib/book.rb'
require_relative '../lib/list_date.rb'