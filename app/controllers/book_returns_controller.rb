class BookReturnsController < ApplicationController
  def index
    @book_returns = BookReturn.all

    @pending_returns = BookReturn.pending_returns
  end
end
