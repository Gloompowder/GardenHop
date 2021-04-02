class User < ApplicationRecord
    has_many :visits
    has_many :gardens, through: :visits

    geocoded_by :full_address
    after_validation :geocode

    def full_address
        [address, city, state, 'United States'].compact.join(', ')
    end

end
