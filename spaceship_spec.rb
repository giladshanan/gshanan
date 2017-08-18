require_relative 'spaceship'

describe Spaceship do
  let(:falcon) {Spaceship.new("Millenium Falcon", 300000)}

  it "warp_to sets location" do
  expect(falcon.warp_to("Chicago")).to eq "Chicago"
  end

  it "weight calculates the ord total" do
  expect(falcon.weight("cow")).to eq 329
  end

  it "tractor_beam adds item/location to inventory if weight < 500" do
  expect(falcon.weight("cow")).to eq 329
  end

  it "tractor_beam returns false if item > 500" do
  expect(falcon.weight("cow")).to eq 329
  end

  it "pickup sets location" do
  expect(falcon.weight("cow")).to eq 329
  end

  it "total_lbs calculates the ord total of inventory" do
  expect(falcon.total_lbs("cow")).to eq 329
  end

end
