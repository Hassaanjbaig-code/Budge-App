class Payment < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_many :group_payments, foreign_key: :payment_id, dependent: :destroy

    validates :name, presence: true
    validates :amount, presence: true
end