class BooksController < ApplicationController
  before_action :find_book, except: [:index, :create]

  def index
    @books = Book.all
    render json: @books, status: :ok
  end

  def show
    render json: @book, status: :ok
  end

  def comments
    render json: @book.comments, status: :ok
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book
    else
      render json: { message: @book.errors }, status: 400
    end
  end

  def update
    if @book.update(book_params)
      render json: @book, status: :ok
    else
      render json: { message: @book.errors }, status: 400
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
    params.require(:book).permit(:title, :author, :category, :current_page, :current_chapter, :total_pages)
  end
end
