class OrdersController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    order  = Order.create!(book_sku: book.sku, amount: book.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end
end
