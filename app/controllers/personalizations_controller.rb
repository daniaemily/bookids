class PersonalizationsController < ApplicationController
  def show
    # @personalization = current_user.personalizations.where(state: 'paid').find(params[:id])
    @personalization = current_user.personalizations.find(params[:id])  #where(state: 'paid').find(params[:id])
    # content = @personalization.book.pages[0].content
    # @content_with_name = content.gsub(/name/,@personalization.character_name)

    # @dataset_flipper = @content_with_name.pages[3]
    # @dataset_flipper = let @book "#{dataset['id'], dataset['color'], dataset['content']};"

    # # let dataset_flipper = ['id', 'color', 'content'];
    @dataset_flipper = []
    @dataset_flipper << {
      id: 0,
      content: "<img  src='#{@personalization.book.photo}' alt='' class='preview-image preview-image-full'>",
      color: ["orange", "pink"].sample,
      image: @personalization.book.photo
    }
      # pages: [{ id: '1', color: 'orange', content: @personalization.book.name, image: @personalization.book.pages.first.image }]
        # 6.times { |i|
    #   @dataset_flipper << {
    #     id: i + 1,
    #     content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium nesciunt !",
    #     color: ["blue", "yellow", "orange", "maroon", "pink"].sample
    #   }
    # }
    @personalization.book.pages.each_with_index do |page, index|
      if page.markup == "title"
        content = "<h1 class='preview-book-title'>#{page.content.gsub(/name/, @personalization.character_name)}</h1>"
      elsif page.markup == "image"
        content = "<img src='#{ActionController::Base.helpers.asset_path(page.image)}' alt='' class='preview-image'>"
      elsif page.markup == "paragraph"
        content = "<p>#{page.content.gsub(/name/, @personalization.character_name)}</p>"
      else
        content = ""
      end
      @dataset_flipper << {
        id: index + 1,
        content: content,
        color: ["orange", "pink"].sample,
        image: @personalization.book.pages[index].image
      }
    end
    # raise
    # @dataset_flipper = [{ id: '1', color: 'red', content: 'first page' },
    #       { id: '2', color: 'blue', content: 'Dedication Page' },
    #       { id: '3', color: 'green', content: 'Random Picture' },
    #       { id: '4', color: 'orange', content: @content_with_name[0, 15] },
    #       { id: '5', color: 'maroon', content: @content_with_name[16, 30] },
    #       { id: '6', color: 'pink', content: @content_with_name[31, 45] },]
  end

  def create
    @personalization = Personalization.new(personalization_params)
    @personalization.user = current_user
    @book = Book.find(params[:book_id])
    @personalization.price = @book.price
    @personalization.book = @book
    if @personalization.save
      respond_to do |format|
        format.html { redirect_to book_path(@book, @personalization) }
        format.js # views/person.../create.js.erb
      end
    else
      respond_to do |format|
        format.html { render 'books/show'}
        format.js
      end
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
