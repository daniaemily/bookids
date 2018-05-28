class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
  end

  def index
    @books = Book.all
  end

  def show
  end
end

