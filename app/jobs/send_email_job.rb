class SendEmailJob < ApplicationJob
  queue_as :default

  def perform
    restaurant = Restaurant.create(restaurant_id)
    SendEmailMailer.add_restaurant(restaurant).deliver
  end
end
