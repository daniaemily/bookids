class FilteredBooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @books = Book.all
    @books = @books.where(category: params[:query]) if params[:query].present?
    @books = @books.where(category: params[:category]) if params[:category].present?
    # p @books

    respond_to do |format|
      format.html { "books/home" }
      format.js # views/filtered_books/index.js.erb
    end
  end

end

