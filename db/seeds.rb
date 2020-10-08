# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'soda/client'
require 'pry'

client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => ENV["APIKEY"]})

results = client.get("ajxm-kzmj", :$limit => 5000)
puts "Got #{results.body.count} results. Dumping first results:"

# results.body.first.each do |k, v|
#   puts "#{k}: #{v}"
# end

results.body.map do |result| Garden.create({propertyid: result.propid, boro: result.boro, communityboard: result.community_board, address: result.address , size: result.size, jurisdiction: result.jurisdiction, longitude: result.longitude, latitude: result.latitude, postcode: result.postcode})end 
    # t.integer :propertyid
    # t.string :boro
    # t.string :communityboard
    # t.string :address
    # t.string :size
    # t.string :jurisdiction
    # t.string :neighborhoodhome
    # t.string :cross_streets
    # t.integer :latitude
    # t.integer :longitutde
    # t.string :postcode


