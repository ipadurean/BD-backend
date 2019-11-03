require 'rails_helper'

describe Trip do

  before do
   @user = User.create(name: "John Doe", username: "jdoe", password: "nothing", phone_number: "773-222-3333")
   @driver = Driver.create(name: "driver")
  end

  before(:each) do
    @trip = Trip.create!({
    :driver_id => @driver.id, 
    :user_id => @user.id, 
    :time_booked => "1", 
    :start_time => "2019-10-19T17:42:21.345Z", 
    :end_time => "2019-10-19T18:42:21.345Z",
    :total => 100.0,
    :address => "515 N State St, Chicago, IL",
    })
  end

  it 'can be created' do
    expect(@trip).to be_valid
  end

end
