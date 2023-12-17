# frozen_string_literal: true

class BooksController < ApplicationController # rubocop:disable Style/Documentation
  before_action :find_book, only: %i[show]

  def index
    @books = Book.all
  end

  def show; end

  private

  def book_params
    params.require(:book).permit(:title, :author_id, :book_type_id)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
