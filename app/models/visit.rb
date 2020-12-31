class Visit < ApplicationRecord
    searchkick word_middle: %i[in_time out_time scheduled_in scheduled_out]
    belongs_to :garden
    belongs_to :user

    def search_data
        {
            in_time: in_time,
            out_time: out_time,
            scheduled_in: scheduled_in,
            scheduled_out: scheduled_out
        }
    end
end
