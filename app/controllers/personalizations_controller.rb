class PersonalizationsController < ApplicationController
  def show
    # @personalization = current_user.personalizations.where(state: 'paid').find(params[:id])
    @personalization = current_user.personalizations.last #where(state: 'paid').find(params[:id])
  end

  def create
    @personalization = Personalization.new(personalization_params)
    @personalization.user = current_user
    @book = Book.find(params[:book_id])
    @personalization.book = @book
    if @personalization.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def preview
    @pages = Page.all[0]
    @pages.book = Book.find(params[:book_id])
    content_with_age = @pages.content
  end

  private

  def personalization_params
     params.require(:personalization).permit(:character_name, :character_gender, :character_age)
  end

end
