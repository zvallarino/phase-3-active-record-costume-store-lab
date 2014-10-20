require_relative 'spec_helper'

describe "Costume" do

  it "has a name" do
    hot_dog = Costume.create(
      name: "Unisex Adult Hot Dog Costume"
    )
    expect(CostumeStore.find_by(name: "Unisex Adult Hot Dog Costume")).to eq(hot_dog)
  end

  it "has a price" do
    pirate = Costume.create(
      name: "Men's Grand Heritage Caribbean Pirate",
      price: 169.97
    )
    expect(CostumeStore.find_by(price: 169.97)).to eq(pirate)
  end

  it "has an image url" do
    url = "http://img.costumecraze.com/images/vendors/rasta/7139-large.jpg"
    penguin = CostumeStore.create(
      name: "Happy Penguin",
      image_url: url
    )
    expect(CostumeStore.find_by(image_url: url)).to eq(penguin)
  end

  it "has a size" do
    horse = CostumeStore.create(
      name: "Horse Mask",
      image_url: "http://a.tgcdn.net/images/products/zoom/ec82_horse_head_mask.jpg",
      size: "medium"
    )
    expect(CostumeStore.find_by(size: "medium")).to eq(horse)
  end

end