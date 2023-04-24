class Group < ApplicationRecord
  belongs_to :user
  has_many :group_payments, foreign_key: :group_id, dependent: :destroy
end
