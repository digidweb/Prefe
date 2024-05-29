class SendEmailJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    puts "Vou executar o trabalho"
    sleep 3
    puts "Finalmente terminei!"
  end
end
