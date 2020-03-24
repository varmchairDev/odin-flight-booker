class PassengerMailer < ApplicationMailer
    
    default from: "odinflightbooker@mail.com"

    def thank_you_email(passenger)
        @passenger = passenger
        @url = "http://localhost:3000/bookings/#{passenger.booking.id}"
        mail(to: passenger.email, 
             subject: "Thank you #{passenger.name} for choosing OdinFlightBooker.")
    end
end
