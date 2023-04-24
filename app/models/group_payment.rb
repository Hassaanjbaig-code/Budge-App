class GroupPayment < ApplicationRecord
  belongs_to :Group, foreign_key: :group_id
  belongs_to :Payment, foreign_key: :payment_id
end
