# frozen_string_literal: true

class BookIssuesController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @book_issues = BookIssue.all
    @book_not_returns = BookIssue.not_returned_books
  end
end
