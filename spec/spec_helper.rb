ENV["ACTIVE_RECORD_ENV"] = "test"

require_relative '../config/environment'

RSpec.configure do |config|

  config.before do
    run_rake_task('db:migrate')
  end
end

def run_rake_task(task)
  RAKE_APP[task].invoke
  if task == 'db:migrate'
    RAKE_APP[task].reenable
  end
end

def __
  raise "Replace __ with test code."
end

def get_opening_time
  d = Date.today
  Time.new(d.year, d.month, d.day, 9, 00)
end

def get_closing_time
  d = Date.today
  Time.new(d.year, d.month, d.day, 22, 00)
end