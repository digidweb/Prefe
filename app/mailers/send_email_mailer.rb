class SendEmailMailer < ApplicationMailer

  def add_restaurant(current_user)
    @admin = User.find(admin)
    @restaurant = Restaurant.last(restaurant_id)
    mail(to: @admin.email, subject: 'teste')
  end
end
