class BooksController < ApplicationController
  def new
	  @page_title = 'Agregar Libro'
	  @book = Book.new
	  @category = Category.new
	  @author = Author.new
	  @publisher = Publisher.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
	
	private
		def book_params
		params.require(:book).permit(:title, :category_id, :publisher_id, :isbn, :price, :buy, :format, :excerpt, :pages, :year)
	end
end
