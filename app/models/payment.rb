class Payment < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  # has_many :group_payments
  # has_many :groups, through: :group_payments
  has_and_belongs_to_many :groups, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true
end
