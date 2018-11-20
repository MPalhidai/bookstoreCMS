class BooksController < ApplicationController
  before_action :find_book, except: [:index, :create]

  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book
    else
      # @book.errors
    end
  end

  def update
    @book.edit(book_params)

    if @book.save
      render json: @book
    else
      # @book.errors
    end
  end

  def destroy
    @book.destroy
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :complete, :category)
  end

end
