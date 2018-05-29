class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def dashboard
    @personalizations = current_user.personalizations
  end
  def home
    @books = Book.all
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @personalizations = @book.personalizations
  end
end

