require 'pry'
module QueryWrangler
    class BaseWrangler
        # def initialize(filters:, page:, query_params:, **options)
        #     @filters = filters
        #     @page = page
        #     @query_params = query_params
        #     @results_per_page = options[:results_per_page]
        #     @sort_direction = options[:sort_direction]
        #     @sort_field = options[:sort_field]
        # end
        attr_reader :query_params
        def initialize(query_params)
            @query_params = query_params.to_h
        end

        def es_payload
            {
            query: {
                bool: {
                    should: must_array
                    }
                }
            }
        end

        def must_array 
            query_params.each_with_object([]) do |(k, v), array|
                array << {multi_match: {
                    query: v
                    # fields: ["#{k}.analyzed", "#{k}.word_start"]
                }}
                # array << {bool: {should: [{multi_match: {"#{k}.analyzed"=>v}}]}}
            end
        end

    end
end
