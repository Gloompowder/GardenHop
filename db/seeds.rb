# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'soda/client'
# require 'pry'
require 'faker'

client = SODA::Client.new({:domain => "data.cityofnewyork.us", :app_token => ENV["APIKEY"]})

results = client.get("ajxm-kzmj", :$limit => 5000)
puts "Got #{results.body.count} results. Dumping first results:"

# results.body.first.each do |k, v|
#   puts "#{k}: #{v}"
# end
Garden.destroy_all

# i = 0 ''
def boro_name(result)
    case result&.boro.presence
        when 'B'
            'Brooklyn'
        when 'M'
            'Manhattan'
        when 'Q'
            'Queens'
        when 'R'
            'Staten Island'
        when 'X'
            'Bronx'
        else
            nil
    end

end
results.body.each do |result| 
    # binding.pry
    if result&.latitude.present? 
        garden = Garden.find_or_create_by({
            property_id: result&.propid.presence, 
            boro: boro_name(result), 
            community_board: result&.community_board.presence, 
            address: result&.address.presence , 
            garden_size: result&.size.presence, 
            jurisdiction: result&.jurisdiction.presence, 
            longitude: result&.longitude.presence, 
            latitude: result&.latitude.presence, 
            postcode: result&.postcode.presence}) 
    end
        # if garden.save 
        #     i + 1 
        # else
        #     binding.pry  
        # end  
end 

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
    arr = [true, false]

    User.destroy_all

    10.times do 
        User.find_or_create_by(
        name: Faker::Name.unique.name, 
        username: Faker::Hipster.words(number: 1), 
        password: Faker::IDNumber.unique.valid, 
        city: Faker::Address.city,
        state: Faker::Address.state,
        address: Faker::Address.street_address,
        postcode: Faker::Address.zip,
        volunteer: arr.sample,
        apartment: Faker::Address.secondary_address,
        phone: Faker::PhoneNumber.unique.cell_phone,
        email: Faker::Internet.unique.email
        )   
    end     
    
    30.times do Visit.find_or_create_by(
        user_id: User.pluck(:id).sample,
        garden_id: Garden.pluck(:id).sample
    )
    end

    # t.integer :user_id
    # t.integer :garden_id
    # t.string :purpose
    # t.string :date
    # t.string :in_time
    # t.string :out_time
    # t.string :scheduled_in
    # t.string :scheduled_out




