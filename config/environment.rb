require 'bundler/setup'
Bundler.require

require 'open-uri'
require 'net/http'
require 'json'

require_relative '../lib/cli_class.rb'
require_relative '../lib/adapter.rb'
require_relative '../lib/skill.rb'