require 'rails_helper'

RSpec.describe TripsController do
  before do
    @user = User.create(name: "John Doe", username: "jdoe", password: "nothing", phone_number: "773-222-3333")
    @driver = Driver.create(name: "driver")
   end

  describe "GET #index" do
      before do
        get :index
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end
  
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new trip" do
        expect {
          post :create, params: {:trip => 
                {:driver_id => @driver.id, 
                 :user_id => @user.id, 
                 :time_booked => "1", 
                 :start_time => "2019-10-19T17:42:21.345Z", 
                 :end_time => "2019-10-19T18:42:21.345Z",
                 :total => 100.0,
                 :address => "515 N State St, Chicago, IL",
                 }}
        }.to change(Trip,:count).by(1)
      end
    end
  end
end
