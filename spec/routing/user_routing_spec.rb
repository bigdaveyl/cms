require "rails_helper"

RSpec.describe "routes for User", :type => :routing do

  it "does not route to /users/sign_up" do
    expect(get: "/users/sign_up").not_to be_routable
  end

  it "does not post to /user" do
    expect(post: "users/registrations").not_to route_to(controller: "users/registrations", action: "new" )
  end

end
