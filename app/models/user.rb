class User < ActiveRecord::Base
  has_secure_password
  validates :email, :password, presence: true
  has_many :organization
  has_many :memberships, dependent: :destroy
  has_many :organizations_joined, through: :memberships, source: :organization
end
