require_relative 'spec_helper'

describe "CostumeStore" do
  let(:spirit_halloween) do
    CostumeStore.create(
      name: "Spirit Halloween",
      location: "766 6th Ave New York, NY 10010"
    )
  end

  it "has a name" do
    expect(CostumeStore.find_by(name: spirit_halloween.name)).to eq(spirit_halloween)
  end

end
