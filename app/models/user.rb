class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :rememberable, :validatable
  has_many :payment, foreign_key: :user_id, dependent: :destroy
  has_many :group, foreign_key: :user_id, dependent: :destroy
end
