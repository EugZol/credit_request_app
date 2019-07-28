class CreateCreditRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_requests do |t|
      t.integer :age, null: false
      t.string :gender, null: false
      t.integer :salary, null: false
      t.boolean :history_available, null: false
      t.integer :amount, null: false
      t.integer :score, null: false
      t.boolean :approved, null: false

      t.timestamps
    end
  end
end
