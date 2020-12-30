class Garden < ApplicationRecord
    searchkick word_middle: %i[address boro community_board cross_streets neighborhood_home]
    has_many :visits
    has_many :users, through: :visits

    def search_data
        {
            address: address,
            boro: boro,
            community_board: community_board,
            cross_streets: cross_streets,
            neighborhood_home: neighborhood_home
        }
    end

end
