Airport.create(code: "NYK", city: "New York")
Airport.create(code: "SFO", city: "San Francisco")
Airport.create(code: "SFI", city: "San Fierro")
Airport.create(code: "LS", city: "Los Santos")
Airport.create(code: "LV", city: "Las Venturas")
Airport.create(code: "LC", city: "Liberty City")
Airport.create(code: "VC", city: "Vice City")
Airport.create(code: "NSA", city: "Nos Astra")

42.times do |n|
    Airport.create(code: "CY#{n}", city: "City-#{n}")
end

500.times do |n|
    Flight.create(take_off_time: Time.new + n*3.hours, arrival_time: Time.new + n*3.hours + 2.hours, 
        from_airport_id: rand(50), to_airport_id: rand(50))
end
