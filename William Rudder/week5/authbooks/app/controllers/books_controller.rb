class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find params[:id]
  end

  def create
    book = Book.create book_params
    redirect_to book
  end

  def update
    book = Book.find params[:id]
    book.update book_params
    redirect_to book
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :releasedate, :image)
  end
end
