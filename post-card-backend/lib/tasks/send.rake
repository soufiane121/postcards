require "rufus-scheduler"

desc "chedk user friend's birthday and reminder him"

task :check_birthdays_send_email => [:environment] do
  user = UserMailer.welcome_email.deliver_now

  p "hello there send #{user}"
end

