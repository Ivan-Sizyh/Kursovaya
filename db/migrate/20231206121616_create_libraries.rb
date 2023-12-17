# frozen_string_literal: true

class CreateLibraries < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :libraries do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
