require_relative 'spec_helper'

describe "CostumeStore" do
  let(:spirit_halloween) { CostumeStore.create(name: "Spirit Halloween") }

  it "has a name (string)" do
    expect(spirit_halloween.name).to eq("Spirit Halloween")
  end

  it "has a location (string)" do
    spirit_halloween.update(location: "19 W 21st St")
    expect(spirit_halloween.location).to eq("19 W 21st St")
  end

  it "has a costume_inventory (integer)" do
    spirit_halloween.update(costume_inventory: 785)
    expect(spirit_halloween.costume_inventory).to eq(785)
  end

  it "has a num_of_employees (integer)" do
    spirit_halloween.update(num_of_employees: 650)
    expect(spirit_halloween.num_of_employees).to eq(650)
  end

  it "has a is_in_business (boolean)" do
    spirit_halloween.update(is_in_business: true)
    expect(spirit_halloween.is_in_business).to eq(true)
  end

  it "has an opening_time (datetime)" do
    now = Time.current
    spirit_halloween.update(opening_time: now)
    expect(spirit_halloween.opening_time).to eq(now)
  end

  it "has a closing_time (datetime)" do
    now = Time.current
    spirit_halloween.update(closing_time: now)
    expect(spirit_halloween.closing_time).to eq(now)
  end

end
