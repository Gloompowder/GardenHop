FactoryBot.define do 
    factory :user do 
        name { Faker::Name.name   }
        username { Faker::Lorem.word }
        password { Faker::Lorem.word  }
        address { Faker::Address.street_address }
        cross_streets { Faker::Lorem.word }
        email { Faker::Internet.safe_email }
        postcode { Faker::Address.zip_code }
        phone { Faker::PhoneNumber.phone_number  }
        city { Faker::Address.city }
        state { Faker::Address.state }
        apartment { Faker::Number.number(digits: 1) }
        volunteer { [true, false].sample } 

        trait :address_at_baruch do 
            address { '1 Bernard Way' }
            city { 'New York City' }
            state { 'New York' }
            postcode { '10010' }
        end
    end
end
