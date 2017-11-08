require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do
  it "GET / routes to recipes#home" do
    expect(:get => "/").to route_to("recipes#home")
  end
end
