class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @favorite = Favorite.new(book: @book, user: current_user)
    @favorite.save
    respond_to do |format|
      format.html { redirect_to books_path }
      format.js # views/favorites/create.js.erb
    end
  end

  def destroy

  end
end
