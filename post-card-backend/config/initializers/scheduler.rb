require "rufus-scheduler"
require "rake"
scheduler = Rufus::Scheduler.new
# system("rake about")

scheduler.every "30s" do
  puts "==============================================Hello... Rufus"

  system "rake check_birthdays_send_email"
end

scheduler.shutdown
