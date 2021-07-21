require_relative 'spec_helper'

describe "HauntedHouse" do
  let(:asylum) { HauntedHouse.create(name: "The Asylum") }

  it "has a name (string)" do
    expect(asylum.name).to eq("The Asylum")
  end

  it "has a location (string)" do
    asylum.update(location: "18301 W Colfax Ave, Golden, CO 80401")
    expect(asylum.location).to eq("18301 W Colfax Ave, Golden, CO 80401")
  end

  it "has a theme (string)" do
    asylum.update(theme: "zombies")
    expect(asylum.theme).to eq("zombies")
  end

  it "has a price (float)" do
    asylum.update(price: 25.00)
    expect(asylum.price).to eq(25.00)
  end

  it "has a family_friendly (boolean)" do
    asylum.update(family_friendly: false)
    expect(asylum.family_friendly).to eq(false)
  end

  it "has an opening_date (datetime)" do
    sept_27th = Date.new(2014, 9, 27)
    asylum.update(opening_date: sept_27th)
    expect(asylum.opening_date).to eq(sept_27th)
  end

  it "has a closing_date (datetime)" do
    nov_2nd = Date.new(2014, 9, 27)
    asylum.update(closing_date: nov_2nd)
    expect(asylum.closing_date).to eq(nov_2nd)
  end

  it "has a long, long description (text)" do
    description = <<~TXT
      DENVER’S #1 RATED HAUNTED HOUSE! FEATURED ON THE TRAVEL CHANNEL'S SHOW AMERICA'S SCARIEST HALLOWEEN ATTRACTIONS!
      CHANGES, UPDATES, AND ENHANCEMENTS GALORE, ALL NEW FOR THE 2014 SEASON!
      RATED IN THE TOP 10 HAUNTED HOUSES IN AMERICA BY HAUNTWORLD MAGAZINE!
      "A mixture of visceral thrills and psychological horror!"
      Are you ready to GET SCARED?! FACE YOUR FEAR at the most insane haunted houses of all Denver Haunted Houses!
      “Within the walls of the legendary Nightmare Factory a hidden passage was unearthed!
      This passage descended two levels into Gordon Cottingham's Hospital for the Mentally Insane, The Asylum.
      Much deeper and darker than the previous levels, the Asylum is a damp and musty place infested with spiders, rats, snakes, and the endless screams of the tortured souls.”
      From the creators of the 13th Floor Haunted House and Nightmare Factory, The Asylum Haunted House is the scariest haunted adventure in all of Denver, Colorado!
      Featuring all new up-close and in-your- face frights for 2014!
    TXT
    asylum.update(description: description)
    expect(asylum.description).to eq(description)
  end

end
