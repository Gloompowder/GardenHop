class Garden < ApplicationRecord
    has_many :visits
    has_many :users, through: :visits

    SORT_MAPPINGS = {
        properties: {
            address: { type: 'keyword' },
            boro: { type: 'keyword' },
            community_board: { type: 'keyword' },
            cross_streets: { type: 'keyword' },
            neighborhood_home: { type: 'keyword' }
        }
    }.freeze

    searchkick merge_mappings: true, mappings: SORT_MAPPINGS

    # searchkick word_middle: %i[address boro community_board cross_streets neighborhood_home]
    # searchkick word_start: [:boro]
    # def self.search_import
    #   includes :visit
    # end
    # UNCOMMENT WHEN SEARCHING FOR VISITS

    class << self
        def filter(filter_params)
            scope = all
            scope = filter_by_address(scope, filter_params)
            scope = filter_by_boro(scope, filter_params)
            scope = filter_by_distance(scope, filter_params)
            return scope
        end

        def filter_by_address(scope, filter_params)
            return scope unless filter_params[:address].present?
            scope.where("LOWER(address) LIKE ?", "%#{filter_params[:address].downcase}%")
        end

        def filter_by_boro(scope, filter_params)
            return scope unless filter_params[:boro].present?
            scope.where("LOWER(boro) LIKE ?", "%#{filter_params[:boro].downcase}%")
        end 

        def filter_by_distance(scope, filter_params)
            return scope unless filter_params[:distance].present?
        end
    end

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
