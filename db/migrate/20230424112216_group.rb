class Group < ActiveRecord::Migration[7.0]
  def change
    create_table :groups, id: :primary_key do |t|
      t.string :name
      t.string :icon
      t.references :user, null: false, foreign_key: true
    end
  end
end
