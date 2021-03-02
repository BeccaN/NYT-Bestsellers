require 'bundler/setup'
Bundler.require

require 'open-uri'
require 'net/http'
require 'openssl'
require 'json'
require 'dotenv/load'

require_relative '../lib/adapter.rb'
require_relative '../lib/book.rb'
require_relative '../lib/list.rb'
require_relative '../lib/books_list.rb'
require_relative '../lib/cli.rb'