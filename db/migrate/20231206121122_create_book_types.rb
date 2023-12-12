class CreateBookTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :book_types do |t|
      t.references :book, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
