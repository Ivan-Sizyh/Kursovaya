# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
