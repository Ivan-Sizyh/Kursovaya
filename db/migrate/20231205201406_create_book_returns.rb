class CreateBookReturns < ActiveRecord::Migration[7.0]
  def change
    create_table :book_returns do |t|
      t.boolean :returned, default: false, null: false
      
      t.references :book_issues, foreigin_key: true, null: false

      t.timestamps
    end
  end
end
