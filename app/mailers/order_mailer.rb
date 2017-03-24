class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(booking)
    @user = booking.user
    @company = booking.trip.company

    mail to: @user.email, subject: "Order Confirmation"
  end
end
