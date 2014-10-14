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

  it "has associated characters in an array" do
    josh = Character.create(name: "Josh")
    tom_hanks.characters << josh
    expect(tom_hanks.characters).to include(Character.first)
  end

end
