class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_accessor :name
  attribute :isadmin, :boolean, default: false
  has_many :carts, dependent: :destroy
  validates :email, presence: true, uniqueness: true
end
