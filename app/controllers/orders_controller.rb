class OrdersController < ApplicationController
  def create
    personalization = Personalization.find(params[:personalization_id])
    order  = Order.create!(personalization_sku: personalization.sku, amount: personalization.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end
end
