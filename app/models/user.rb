class User < ApplicationRecord
    has_many :payment, foreign_key: :user_id, dependent: :destroy
    has_many :group, foreign_key: :user_id, dependent: :destroy
end