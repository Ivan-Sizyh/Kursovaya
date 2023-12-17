# frozen_string_literal: true

class CreateReaders < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :readers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :middle_name, null: false
      t.string :home_address, null: false
      t.string :home_phone, null: false
      t.string :work_phone, null: false

      t.timestamps
    end
  end
end
