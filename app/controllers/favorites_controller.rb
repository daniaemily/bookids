class FavoritesController < ApplicationController
  def like
    book = Book.find(params[:id])
    book.favorite = true
    book.save
    raise
  end
end
