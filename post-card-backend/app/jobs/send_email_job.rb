class SendEmailJob < ApplicationJob
  queue_as :default
  # self.queue_adapter = :delayed_job

  def perform(*args)
    # Do something later
    p "==========================222hello testing from Job model"
  end

end
