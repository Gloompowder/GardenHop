FactoryBot.define do 
    factory :garden do 
        address { Faker::Address.street_address }
        boro { Faker::Lorem.word }
        community_board { Faker::Lorem.word }
        cross_streets { Faker::Lorem.word }
        neighborhood_home { Faker::Lorem.word }
    end
end