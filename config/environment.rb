require 'bundler/setup' 
Bundler.require

require 'open-uri'
require 'net/http'
require 'json'

require_relative '../lib/cli_class.rb'
require_relative '../lib/scraper.rb'
require_relative '../lib/spells.rb'

#require_all '..lib'