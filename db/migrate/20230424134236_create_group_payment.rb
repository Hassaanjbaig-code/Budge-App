class CreateGroupPayment < ActiveRecord::Migration[7.0]
  def change
    create_table :group_payments do |t|
      t.references :groups, null: false, foreign_key: true
      t.references :payments, null: false, foreign_key: true

      t.timestamps
    end
  end
end
