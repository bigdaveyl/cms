require "rails_helper"

RSpec.describe "requests for User", :type => :request do
  it "blocks new user creation" do
    assert_raises ActionController::RoutingError do
      password = FFaker::Internet.password
      post "/user", :params => { :user => { :email => FFaker::Internet.email, :password => password, :password_confirmation => password } }
    end
  end
end
