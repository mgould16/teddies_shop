class Order < ApplicationRecord
  belongs_to :user
  monetize :amount_cents


  def create #on user creating an order, an email confirmation will be sent.
    @order = current_user.orders.build(order_params)

    if @order.save
      OrderMailer.creation_confirmation(@order).deliver_now
      redirect_to order_path(@order)
    else
      render :new
    end
  end

end
