class CreateBookReturns < ActiveRecord::Migration[7.0]
  def change
    create_table :book_returns do |t|
      t.boolean :returned, default: false, null: false
      t.references :book_issue, foreign_key: true

      t.timestamps
    end
  end
end
