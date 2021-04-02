module Gardens 
    class Filter 
        attr_accessor :filter_params, :gardens

        def initialize(filter_params)
            @filter_params = filter_params
            @gardens = Garden.all
        end

        def filter
            gardens = gardens.filter_by_boro
        end
    end
end