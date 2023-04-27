class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :rememberable, :validatable
  has_many :payment, foreign_key: :user_id, dependent: :destroy
  has_many :group, foreign_key: :user_id, dependent: :destroy
end
