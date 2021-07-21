require_relative 'spec_helper'

describe "Costume" do
  let(:hot_dog) { Costume.create(name: "Unisex Adult Hot Dog Costume") }

  it "has a name (string)" do
    expect(hot_dog.name).to eq("Unisex Adult Hot Dog Costume")
  end

  it "has a price (float)" do
    hot_dog.update(price: 169.97)
    expect(hot_dog.price).to eq(169.97)
  end

  it "has a size (string)" do
    hot_dog.update(size: "medium")
    expect(hot_dog.size).to eq("medium")
  end

  it "has an image_url (string)" do
    penguin = Costume.create(
      name: "Happy Penguin",
      image_url: "http://img.costumecraze.com/images/vendors/rasta/7139-large.jpg"
    )
    expect(penguin.image_url).to eq("http://img.costumecraze.com/images/vendors/rasta/7139-large.jpg")
  end

  it "knows when it was created (hint: use t.timestamps in the migration)" do
    expect(hot_dog.created_at).to be_a_kind_of(Time)
  end

  it "knows when it was last updated (hint: use t.timestamps in the migration)" do
    expect(hot_dog.updated_at).to be_a_kind_of(Time)
  end

end
