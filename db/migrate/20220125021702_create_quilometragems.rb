class CreateQuilometragems < ActiveRecord::Migration[6.1]
  def change
    create_table :quilometragems do |t|
      t.string :date, null: false
      t.string :name, null: false
      t.string :state, null: false
      t.string :city, null: false
      t.string :addres, null: false
      t.string :client, null: false
      t.string :board, null: false
      t.string :startingkm, null: false
      t.string :finalkm, null: false

      t.timestamps
    end
  end
end
