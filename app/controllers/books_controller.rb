class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def dashboard
    @personalizations = current_user.personalizations
  end

  def home
    @books = Book.all
  end

  def index
    if params[:query].present?
      sql_query = " \
        books.name @@ :query \
        OR books.age @@ :query \
        OR books.author @@ :query \
        OR books.category @@ :query
      "
        # OR pages.content @@ query
      @books = Book.where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
    @personalization = Personalization.new

    @personalizations = @book.personalizations

  end

  def private
  end
end

