class PersonalizationsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    order  = Personalization.create!(book_sku: book.sku, amount: book.price, state: 'pending', user: current_user, book: book)

    redirect_to new_order_payment_path(order)
  end

  def show
    @personalization = current_user.personalizations.first  #where(state: 'paid').find(params[:id])
  end
end
