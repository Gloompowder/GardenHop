class Garden < ApplicationRecord
    searchkick
    has_many :visits
    has_many :users, through: :visits
end
