require 'rubygems'
require 'uri'
require 'net/http'

desc "This task is called by the Heroku cron add-on"
task :ping do
  uri = URI.parse ENV['HEROKU_URL']
  Net::HTTP.get(uri)
end
