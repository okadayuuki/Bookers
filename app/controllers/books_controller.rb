class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	book.save
  	redirect_to create_book_path(@book.id)

  	
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	book.update(book_params)
  	redirect_to update_book_path(@book.id)
  	
  end

  def destroy
  	book = Book.find(params[:id])
  	book.delete
  	redirect_to books_path
  	
  end

  private

  def book_params
  	params.require(:book).permit(:title,:body)
  	
  end
end
