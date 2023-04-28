class GroupsPayment < ApplicationRecord
  belongs_to :group
  belongs_to :payment
end
