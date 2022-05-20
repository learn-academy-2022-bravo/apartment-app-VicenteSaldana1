require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
        it "lets a user see all apartments" do
          user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

        user.apartments.create(
        street: '5590 Baltimore Drive', 
        city: 'La Mesa', 
        state: 'California',
        manager: 'Lebron James',
        email: 'lebron@gmail.com',
        price: '$5000',
        bedrooms: 2, 
        bathrooms: 2,
        pets: 'Yes',
        image: 'https://cdngeneral.rentcafe.com/dmslivecafe/2/102601/THEA%20at%20Metropolis%20Two%20Bedroom%20Living%20Area.jpg?crop=(0,0,300,200)&cropxunits=300&cropyunits=200&width=380',
        user_id: 1
      )

     
      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end
end
