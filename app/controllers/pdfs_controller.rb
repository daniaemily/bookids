class PdfsController < ApplicationController
  def show
    @personalization = Personalization.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "your_book",
        template: "pdfs/show.html.erb",
        layout:'pdf'
      end
    end
  end
end
