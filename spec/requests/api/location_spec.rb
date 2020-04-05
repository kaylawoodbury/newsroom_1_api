RSpec.describe  Api::LocationsController, type: :request do
  let(:headers) { { HTTP_ACCEPT: 'application/json' } }

  describe 'GET /api/locations' do
    
    before do
      location_list = [
        {country: "Sweden", lat: 59.20, long: 18.04} ,
        {country: "United States", lat: 38.54, long: 77.02},
        {country: "Germany", lat: 52.31, long: 13.23},
        {country: "Japan", lat: 35.42, long: 139.42},
        {country: "China", lat: 39.55, long: 116.23}
      ]
      location_list.each do |country, lat, long|
        FactoryBot.create(:location, country: country, lat: lat, long: long)
      end
    end

    # it 'returns a collection of locations' do
    #   get '/api/locations', headers: headers
    #   binding.pry
    #   expect(json_response.length).to eq 
    # end
    

    it 'returns 200 response' do
      get '/api/locations', headers: headers
      expect(response.status).to eq 200
    end
  end
end