Airport.create(code: "NYK", city: "New York")
Airport.create(code: "SFO", city: "San Francisco")
Airport.create(code: "SFI", city: "San Fierro")
Airport.create(code: "LS", city: "Los Santos")
Airport.create(code: "LV", city: "Las Venturas")
Airport.create(code: "LC", city: "Liberty City")
Airport.create(code: "VC", city: "Vice City")
Airport.create(code: "NSA", city: "Nos Astra")

10000.times do |n|
    from = rand(8)
    to = from 
    while to == from 
        to = rand(8)
    end 
    Flight.create(take_off_time: Time.new + n*15.minutes, arrival_time: Time.new + n*15.minutes + 2.hours, 
        from_airport_id: from, to_airport_id: to)
end
