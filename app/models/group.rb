class Group < ApplicationRecord
  belongs_to :user
  # has_many :group_payments
  # has_many :payments, through: :group_payments
  has_and_belongs_to_many :payments, dependent: :destroy
end
