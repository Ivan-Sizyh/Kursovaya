# frozen_string_literal: true

class BookIssuesController < ApplicationController # rubocop:disable Style/Documentation
  def index
    @book_issues = BookIssue.all
    @book_not_returns = BookIssue.not_returned_books
  end

  def new
    @book_issue = BookIssue.new(issue_date: Date.current)
  end

  def create
    @book_issue = BookIssue.new(book_issue_params.merge(issue_date: Date.current))

    if @book_issue.save
      redirect_to book_issues_path
    else
      render :new
    end
  end

  def destroy
    @book_issue = BookIssue.find(params[:id])
    redirect_to book_issues_path if @book_issue.destroy
  end

  private

  def book_issue_params
    params.require(:book_issue).permit(:return_date, :book_card_id)
  end
end
