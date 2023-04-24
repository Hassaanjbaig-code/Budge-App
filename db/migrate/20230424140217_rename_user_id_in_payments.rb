class RenameUserIdInPayments < ActiveRecord::Migration[7.0]
  def change
    rename_column :payments, :user_id, :Author_id
  end
end
