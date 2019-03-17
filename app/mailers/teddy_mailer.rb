class RestaurantMailer < ApplicationMailer
  def creation_confirmation(teddy)
    @teddy = teddy

    mail(
      to:       @teddy.user.email,
      subject:  "Teddy #{@teddy.name} created!"
    )
  end
end
