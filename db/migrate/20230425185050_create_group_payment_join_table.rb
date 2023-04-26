class CreateGroupPaymentJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :payments do |t|
      t.index [:group_id, :payment_id]
      t.index [:payment_id, :group_id]
    end

    add_foreign_key :groups_payments, :groups
    add_foreign_key :groups_payments, :payments
  end
end
