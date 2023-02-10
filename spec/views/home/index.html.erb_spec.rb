require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it "renders static text" do
    render
    expect(rendered).to match(/Stay tuned, folks./)
  end
end
