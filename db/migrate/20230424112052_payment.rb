class Payment < ActiveRecord::Migration[7.0]
  def change
    create_table :payments, id: :primary_key do |t|
      t.string :name
      t.integer :Amount, default: 0
      t.references :user, null: false, foreign_key: true
    end
  end
end
