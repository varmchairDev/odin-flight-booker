50.times do |n|
    Airport.create(code: "CY#{n}", city: "City-#{n}")
end
