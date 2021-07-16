ENV['RACK_ENV'] ||= 'test'
require_relative "../config/environment"
require "sinatra/activerecord/rake"

RSpec.configure do |config|
  # Database setup
  if ActiveRecord::Base.connection.migration_context.needs_migration?
    # Run migrations for test environment
    Rake::Task["db:migrate"].execute
  end

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  
  config.shared_context_metadata_behavior = :apply_to_host_groups
end

def __
  raise "Replace __ with test code."
end

def clear_db
  File.open("db/halloween-test.db", "w+") {|f| f.puts ""}
end

def get_opening_time
  d = Date.today
  Time.new(d.year, d.month, d.day, 9, 00)
end

def get_closing_time
  d = Date.today
  Time.new(d.year, d.month, d.day, 22, 00)
end

def get_description
  description = <<-eos
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
  eos
end
