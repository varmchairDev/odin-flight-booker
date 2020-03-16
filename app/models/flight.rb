class Flight < ApplicationRecord

    has_one_and_belongs_to :airport

    has_one :from_airport, class: "Flight",
                      foreign_id: "start_id"

    has_one :to_airport,   class: "Flight",
                      foreign_id: "target_id"

end
