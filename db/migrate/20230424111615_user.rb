class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :primary_key do |t|
      t.string :name

      t.timestamps # created_at, updated_at
    end
  end
end
