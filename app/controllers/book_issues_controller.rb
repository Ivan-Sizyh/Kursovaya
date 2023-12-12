class BookIssuesController < ApplicationController
  def index
    @book_issues = BookIssue.all
    @book_not_returns = BookIssue.not_returned_books
  end


end
