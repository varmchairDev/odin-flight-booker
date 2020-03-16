class Airport < ApplicationRecord

    has_many_and_belongs_to :flights, dependent: :destroy

    has_many :departing_flights, class: "Flight"

    has_many :arriving_flights,  class: "Flight"

end
