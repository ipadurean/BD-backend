require 'rails_helper'

RSpec.describe UsersController do

  describe "POST #create" do
  context "with valid attributes" do
              it "creates a new user" do
                expect {
                  post :create, params: {:user => {
                    :name => "John Doe",
                    :username => "JohnyD9826398462",
                    :password => "kjbchvlwhvcl",
                    :phone_number => "7730923232"
                  }}
                }.to change(User,:count).by(1)
              end
            end
          end

end