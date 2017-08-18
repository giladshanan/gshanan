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
    falcon.warp_to("Chicago")
    expect(falcon.tractor_beam("cow")).to eq true
    expect(falcon.print_inventory).to eq "cow" => "Chicago"
  end

  it "tractor_beam returns false if item > 500" do
    expect(falcon.tractor_beam("lobster")).to eq false
  end

  it "pickup sets location" do
    falcon.pickup("duck", "LA")
    expect(falcon.print_inventory).to eq "duck"=>"LA"
  end

  it "total_lbs calculates the ord total of inventory" do
    falcon.tractor_beam("cow")
    falcon.tractor_beam("duck")
    falcon.tractor_beam("ox")
    expect(falcon.total_lbs).to eq 983
  end

end
