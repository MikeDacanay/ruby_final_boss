class Organization < ActiveRecord::Base
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  validates :name, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 10}
end
