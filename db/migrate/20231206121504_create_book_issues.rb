# frozen_string_literal: true

class CreateBookIssues < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :book_issues do |t|
      t.date :issue_date, null: false
      t.date :return_date, null: false
      t.references :book_card, foreigin_key: true, null: false

      t.timestamps
    end
  end
end
