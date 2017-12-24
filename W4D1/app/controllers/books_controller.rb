class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all
    render index: @books
  end

  def new
    # your code here
    render :new
  end

  def create
    # your code here
    if Book.create(book_params)
      redirect_to books_url
    else
      flash[:errors] << "must enter data"
      render :new
    end
  end

  def destroy
    # your code here
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_url
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
