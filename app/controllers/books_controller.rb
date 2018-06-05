class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def like
    book = Book.find(params[:id])
    @favorite = Favorite.create(book:book, user: current_user)
    redirect_to books_path
  end

  def dislike

  end

  def dashboard
    @personalizations = current_user.personalizations
  end

  def home
    @books = Book.all
  end

  def index
    if params[:query].present?
      filters = {}
      filters[:age] = params[:age] if params[:age].present?
      filters[:category] = params[:category] if params[:category].present?
      filters[:price_cents] = {gt: 0, lt: params[:price_cents].to_i * 100 } if params[:price_cents].present?
      @books = Book.search(params[:query], where: filters, operator: "or")
    else
      @books = Book.all
      @books = @books.where(age: params[:age]) if params[:age].present?
      @books = @books.where(category: params[:category]) if params[:category].present?
      @books = @books.where("price_cents <= ?", params[:price_cents].to_i * 100) if params[:price_cents].present?
    end
  end

  def show
    @book = Book.find(params[:id])
    @personalization = Personalization.new

    if params[:personalization]
      @completed_personalization = Personalization.find(params[:personalization])
    end
    @personalizations = @book.personalizations

    @average = average
  end



  # def multisearch

  #   pg_search_scope : search_page_fields, :against => [:category, :price_cents, :age]

  # end
private
  def average
    sum = 0
    number = 0
    @personalizations = @book.personalizations
    @personalizations.each do |personalization|
      personalization.reviews.each do |review|
        number += 1
        sum += review.stars
      end
    end
    @average = (sum.to_f/number.to_f).to_f.round(1)
    return @average
  end
end

